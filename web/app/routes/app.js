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

export default Ember.Route.extend({

    beforeModel: function (transition) {
        this.applicationid = transition.queryParams.applicationid;
    },

    model(){
        this.applications = this.store.queryRecord('application', {applicationid: this.get("applicationid")});
        return this.applications;
    },
    actions: {
        error(error, transition) {
            if (error.errors[0].status == 404) {
                return this.transitionTo('not-found', { queryParams: {'previous': window.location.href}});
            }
        }
    }
});
