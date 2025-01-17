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
package com.nholuongut.drelephant.tez.fetchers;

import java.util.regex.Matcher;
import org.junit.Assert;
import org.junit.Test;
import com.nholuongut.drelephant.util.ThreadContextMR2;

public class TezFetcherTest {

  @Test
  public void testDiagnosticMatcher() {
    Matcher matcher = ThreadContextMR2.getDiagnosticMatcher("Task task_1443068695259_9143_m_000475 failed 1 time");
    Assert.assertEquals(".*[\\s\\u00A0]+(task_[0-9]+_[0-9]+_[m|r]_[0-9]+)[\\s\\u00A0]+.*", matcher.pattern().toString());
    Assert.assertEquals(true, matcher.matches());
    Assert.assertEquals(1, matcher.groupCount());
    Assert.assertEquals("task_1443068695259_9143_m_000475", matcher.group(1));
  }

}