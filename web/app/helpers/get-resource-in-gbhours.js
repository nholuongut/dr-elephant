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

import Ember from 'ember';

const mbs_in_one_gb = 1024;
const seconds_in_one_hour = 3600;

/**
 * Returns the resource after converting to GB Hours
 * @param params The resource in MB Seconds
 * @returns Resource in GB Hours
 */
export function getResourceInGBHours(params) {
  let [MBSeconds] = params;
  if (MBSeconds == 0) {
    return "0 GB Hours";
  }

  var GBseconds = MBSeconds/mbs_in_one_gb;
  var GBHours = GBseconds / seconds_in_one_hour;

  if ((GBHours * 1000).toFixed(0) == 0) {
    return "0 GB Hours";
  }

  var GBHoursString = GBHours.toFixed(3).toString();
  GBHoursString = GBHoursString + " GB Hours";
  return GBHoursString;
}

export default Ember.Helper.helper(getResourceInGBHours);
