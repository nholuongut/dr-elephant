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
import users from 'dr-elephant/models/users';
import Dashboard from 'dr-elephant/controllers/dashboard';

export default Dashboard.extend({
  users: new users(),
  loading: false,

  /**
   * This function returns the list of usernames currently stored
   * @returns The list of usernames currently stored
   */
  usernames: function () {
    return this.users.getUsernames();
  },
  actions: {

    /**
     * changes the tab to the clicked user
     * @params The name of the user tab
     */
    changeTab(tabname) {
      this.set("loading", true);
      this.users.setActiveUser(tabname);
      var _this = this;
      _this.store.unloadAll();
      var newworkflows = this.store.query('workflow-summary', {username: tabname});
      newworkflows.then(function () {
        _this.set("model.workflows", newworkflows);
        _this.set("loading", false);
      });
    }

  }
});
