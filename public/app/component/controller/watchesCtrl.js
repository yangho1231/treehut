angular.module('myApp').controller('watchesCtrl', function($scope, mainSvc) {
  $scope.getWatches = function() {
    mainSvc.getWatches().then(function(res) {
      $scope.watches = res;
    });
  };
  $scope.getWatches();
});
