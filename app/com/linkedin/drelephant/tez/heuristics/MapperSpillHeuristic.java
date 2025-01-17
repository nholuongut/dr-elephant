/*
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 *
 */
package com.nholuongut.drelephant.tez.heuristics;

import com.nholuongut.drelephant.analysis.Heuristic;
import com.nholuongut.drelephant.analysis.HeuristicResult;
import com.nholuongut.drelephant.analysis.Severity;
import com.nholuongut.drelephant.configurations.heuristic.HeuristicConfigurationData;
import com.nholuongut.drelephant.tez.data.TezCounterData;
import com.nholuongut.drelephant.tez.data.TezApplicationData;
import com.nholuongut.drelephant.tez.data.TezTaskData;
import com.nholuongut.drelephant.util.Utils;
import org.apache.log4j.Logger;


import java.util.Arrays;
import java.util.Map;

/**
 * Analyzes mapper task data spill rates
 */
public class MapperSpillHeuristic implements Heuristic<TezApplicationData> {
  private static final Logger logger = Logger.getLogger(MapperSpillHeuristic.class);
  private static final long THRESHOLD_SPILL_FACTOR = 10000;

  // Severity parameters.
  private static final String SPILL_SEVERITY = "spill_severity";
  private static final String NUM_TASKS_SEVERITY = "num_tasks_severity";

  // Default value of parameters
  private double[] numTasksLimits = {50, 100, 500, 1000};      // Number of Map tasks.
  private double[] spillLimits = {2.01d, 2.2d, 2.5d, 3.0d};    // Records spilled/total output records

  private HeuristicConfigurationData _heuristicConfData;

  private void loadParameters() {
    Map<String, String> paramMap = _heuristicConfData.getParamMap();
    String heuristicName = _heuristicConfData.getHeuristicName();

    double[] confNumTasksThreshold = Utils.getParam(paramMap.get(NUM_TASKS_SEVERITY), numTasksLimits.length);
    if (confNumTasksThreshold != null) {
      numTasksLimits = confNumTasksThreshold;
    }
    logger.info(heuristicName + " will use " + NUM_TASKS_SEVERITY + " with the following threshold settings: "
        + Arrays.toString(numTasksLimits));

    double[] confSpillThreshold = Utils.getParam(paramMap.get(SPILL_SEVERITY), spillLimits.length);
    if (confSpillThreshold != null) {
      spillLimits = confSpillThreshold;
    }
    logger.info(heuristicName + " will use " + SPILL_SEVERITY + " with the following threshold settings: " + Arrays
        .toString(spillLimits));
    for (int i = 0; i < spillLimits.length; i++) {
      spillLimits[i] = spillLimits[i] * THRESHOLD_SPILL_FACTOR;
    }
  }

  public MapperSpillHeuristic(HeuristicConfigurationData heuristicConfData) {
    this._heuristicConfData = heuristicConfData;
    loadParameters();
  }

  @Override
  public HeuristicConfigurationData getHeuristicConfData() {
    return _heuristicConfData;
  }

  @Override
  public HeuristicResult apply(TezApplicationData data) {
    if(!data.getSucceeded()) {
      return null;
    }
    TezTaskData[] tasks = data.getMapTaskData();

    long totalSpills = 0;
    long totalOutputRecords = 0;
    double ratioSpills = 0.0;

    for (TezTaskData task : tasks) {

      if (task.isSampled()) {
        totalSpills += task.getCounters().get(TezCounterData.CounterName.SPILLED_RECORDS);
        totalOutputRecords += task.getCounters().get(TezCounterData.CounterName.OUTPUT_RECORDS);
      }
    }

    //If both totalSpills and totalOutputRecords are zero then set ratioSpills to zero.
    if (totalSpills == 0) {
      ratioSpills = 0;
    } else {
      ratioSpills = (double) totalSpills / (double) totalOutputRecords;
    }

    Severity severity = getSpillSeverity(ratioSpills);

    // Severity is reduced if number of tasks is small
    Severity taskSeverity = getNumTasksSeverity(tasks.length);
    severity =  Severity.min(severity, taskSeverity);

    HeuristicResult result = new HeuristicResult(_heuristicConfData.getClassName(),
        _heuristicConfData.getHeuristicName(), severity, Utils.getHeuristicScore(severity, tasks.length));

    result.addResultDetail("Number of tasks", Integer.toString(tasks.length));
    result.addResultDetail("Avg spilled records per task",
        tasks.length == 0 ? "0" : Long.toString(totalSpills / tasks.length));
    result.addResultDetail("Avg output records per task",
        tasks.length == 0 ? "0" : Long.toString(totalOutputRecords / tasks.length));
    result.addResultDetail("Ratio of spilled records to output records", Double.toString(ratioSpills));

    return result;

  }

  private Severity getSpillSeverity(double ratioSpills) {

    long normalizedSpillRatio = 0;
    //Normalize the ratio to integer.
    normalizedSpillRatio = (long) (ratioSpills * THRESHOLD_SPILL_FACTOR);

    return Severity.getSeverityAscending(
        normalizedSpillRatio, spillLimits[0], spillLimits[1], spillLimits[2], spillLimits[3]);
  }

  private Severity getNumTasksSeverity(long numTasks) {
    return Severity.getSeverityAscending(
        numTasks, numTasksLimits[0], numTasksLimits[1], numTasksLimits[2], numTasksLimits[3]);
  }


}
