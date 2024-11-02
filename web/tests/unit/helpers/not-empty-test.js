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

import { notEmpty } from 'dr-elephant/helpers/not-empty';
import { module, test } from 'qunit';

module('Unit | Helper | not empty');

test('Test for notEmpty helper', function(assert) {
  let result = notEmpty(["this is not empty"]);
  assert.ok(result);
  result = notEmpty([""]);
  assert.ok(!result);
});