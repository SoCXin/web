/**
 * Copyright 2014-present Ivan Kravets <me@ikravets.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

(function() {
  'use strict';

  angular
    .module('siteApp')
    .controller('PlatformsController', PlatformsController);

  function PlatformsController(platformsList, frameworksList) {
    var vm = this;

    vm.getPlatformTitles = getPlatformTitles;

    vm.platforms = platformsList;
    vm.frameworks = frameworksList;
    vm.activeGroup = 0;

    ////////////

    function getPlatformTitles() {
      var result = [];
      angular.forEach(platformsList, function(platform) {
        result.push(platform.title);
      });
      return result;
    }

  }
})();
