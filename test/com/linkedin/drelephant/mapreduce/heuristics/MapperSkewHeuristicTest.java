/*
 * Copyright 2016 - 2024, Nho Luong DevOps
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
 */

package com.nholuongut.drelephant.mapreduce.heuristics;

import com.nholuongut.drelephant.analysis.ApplicationType;
import com.nholuongut.drelephant.analysis.HDFSContext;
import com.nholuongut.drelephant.analysis.Heuristic;
import com.nholuongut.drelephant.analysis.HeuristicResult;
import com.nholuongut.drelephant.analysis.Severity;
import com.nholuongut.drelephant.mapreduce.data.MapReduceCounterData;
import com.nholuongut.drelephant.mapreduce.data.MapReduceApplicationData;
import com.nholuongut.drelephant.mapreduce.data.MapReduceTaskData;

import com.nholuongut.drelephant.configurations.heuristic.HeuristicConfigurationData;
import java.io.IOException;

import java.util.HashMap;
import java.util.Map;
import junit.framework.TestCase;


public class MapperSkewHeuristicTest extends TestCase {

  private static final long UNITSIZE = HDFSContext.HDFS_BLOCK_SIZE / 64; //1MB
  private static final long UNITSIZETIME = 1000000; //1000sec

  private static Map<String, String> paramsMap = new HashMap<String, String>();
  private static Heuristic _heuristic = new MapperSkewHeuristic(new HeuristicConfigurationData("test_heuristic",
      "test_class", "test_view", new ApplicationType("test_apptype"), paramsMap));

  public void testCritical() throws IOException {
    assertEquals(Severity.CRITICAL, analyzeJob(200, 200, 1 * UNITSIZE, 100 * UNITSIZE));
  }

  public void testSevere() throws IOException {
    assertEquals(Severity.SEVERE, analyzeJob(200, 200, 10 * UNITSIZE, 100 * UNITSIZE));
  }

  public void testModerate() throws IOException {
    assertEquals(Severity.MODERATE, analyzeJob(200, 200, 20 * UNITSIZE, 100 * UNITSIZE));
  }

  public void testLow() throws IOException {
    assertEquals(Severity.LOW, analyzeJob(200, 200, 30 * UNITSIZE, 100 * UNITSIZE));
  }

  public void testNone() throws IOException {
    assertEquals(Severity.NONE, analyzeJob(200, 200, 50 * UNITSIZE, 100 * UNITSIZE));
  }

  public void testSmallFiles() throws IOException {
    assertEquals(Severity.NONE, analyzeJob(200, 200, 1 * UNITSIZE, 5 * UNITSIZE));
  }

  public void testSmallTasks() throws IOException {
    assertEquals(Severity.NONE, analyzeJob(5, 5, 10 * UNITSIZE, 100 * UNITSIZE));
  }

  public void testCriticalTime() throws IOException {
    assertEquals(Severity.CRITICAL, analyzeJobTime(200, 200, 1 * UNITSIZETIME, 100 * UNITSIZETIME));
  }

  public void testSevereTime() throws IOException {
    assertEquals(Severity.SEVERE, analyzeJobTime(200, 200, 10 * UNITSIZETIME, 100 * UNITSIZETIME));
  }

  public void testModerateTime() throws IOException {
    assertEquals(Severity.MODERATE, analyzeJobTime(200, 200, 20 * UNITSIZETIME, 100 * UNITSIZETIME));
  }

  public void testLowTime() throws IOException {
    assertEquals(Severity.LOW, analyzeJobTime(200, 200, 30 * UNITSIZETIME, 100 * UNITSIZETIME));
  }

  public void testNoneTime() throws IOException {
    assertEquals(Severity.NONE, analyzeJobTime(200, 200, 50 * UNITSIZETIME, 100 * UNITSIZETIME));
  }

  public void testSmallTasksTime() throws IOException {
    assertEquals(Severity.NONE, analyzeJobTime(5, 5, 10 * UNITSIZETIME, 100 * UNITSIZETIME));
  }

  private Severity analyzeJob(int numSmallTasks, int numLargeTasks, long smallInputSize, long largeInputSize)
      throws IOException {
    MapReduceCounterData jobCounter = new MapReduceCounterData();
    MapReduceTaskData[] mappers = new MapReduceTaskData[numSmallTasks + numLargeTasks + 1];

    MapReduceCounterData smallCounter = new MapReduceCounterData();
    smallCounter.set(MapReduceCounterData.CounterName.HDFS_BYTES_READ, smallInputSize);

    MapReduceCounterData largeCounter = new MapReduceCounterData();
    largeCounter.set(MapReduceCounterData.CounterName.S3A_BYTES_READ, largeInputSize);

    int i = 0;
    for (; i < numSmallTasks; i++) {
      mappers[i] = new MapReduceTaskData("task-id-"+i, "task-attempt-id-"+i);
      mappers[i].setTimeAndCounter(new long[5], smallCounter);
    }
    for (; i < numSmallTasks + numLargeTasks; i++) {
      mappers[i] = new MapReduceTaskData("task-id-"+i, "task-attempt-id-"+i);
      mappers[i].setTimeAndCounter(new long[5], largeCounter);
    }
    // Non-sampled task, which does not contain time and counter data
    mappers[i] = new MapReduceTaskData("task-id-"+i, "task-attempt-id-"+i);

    MapReduceApplicationData data = new MapReduceApplicationData().setCounters(jobCounter).setMapperData(mappers);
    HeuristicResult result = _heuristic.apply(data);
    return result.getSeverity();

  }

  private Severity analyzeJobTime(int numSmallTasks, int numLongTasks, long smallTimeTaken, long longTimeTaken)
          throws IOException {
    MapReduceTaskData[] mappers = new MapReduceTaskData[numSmallTasks + numLongTasks + 1];

    int i = 0;
    for (; i < numSmallTasks; i++) {
      mappers[i] = new MapReduceTaskData("task-id-"+i, "task-attempt-id-"+i);
      mappers[i].setTotalTimeMs(smallTimeTaken, true);
    }
    for (; i < numSmallTasks + numLongTasks; i++) {
      mappers[i] = new MapReduceTaskData("task-id-"+i, "task-attempt-id-"+i);
      mappers[i].setTotalTimeMs(longTimeTaken, true);
    }
    // Non-sampled task, which does not contain time data
    mappers[i] = new MapReduceTaskData("task-id-"+i, "task-attempt-id-"+i);
    MapReduceApplicationData data = new MapReduceApplicationData().setMapperData(mappers);
    HeuristicResult result = _heuristic.apply(data);
    return result.getSeverity();

  }
}
