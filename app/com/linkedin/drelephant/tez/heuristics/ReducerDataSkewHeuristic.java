/*
 * Copyright 2017 Electronic Arts Inc.
 *
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

import com.nholuongut.drelephant.configurations.heuristic.HeuristicConfigurationData;
import com.nholuongut.drelephant.tez.data.TezApplicationData;
import com.nholuongut.drelephant.tez.data.TezCounterData;
import com.nholuongut.drelephant.tez.data.TezTaskData;
import org.apache.log4j.Logger;

import java.util.Arrays;


/**
 * This Heuristic analyses the skewness in the task input data
 */
public class ReducerDataSkewHeuristic extends GenericDataSkewHeuristic {
  private static final Logger logger = Logger.getLogger(ReducerDataSkewHeuristic.class);

  public ReducerDataSkewHeuristic(HeuristicConfigurationData heuristicConfData) {
    super(Arrays.asList(TezCounterData.CounterName.SHUFFLE_BYTES), heuristicConfData);
  }

  @Override
  protected TezTaskData[] getTasks(TezApplicationData data) {
    return data.getReduceTaskData();
  }
}