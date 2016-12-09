angular.module('myApp').controller('sunglassesCtrl', function($scope, mainSvc) {
  $scope.getSunglasses = function() {
    mainSvc.getSunglasses().then(function(res) {
      $scope.sunglasses = res;

      console.log(res);

    });
  };
  $scope.test = "This is a test";
  $scope.getSunglasses();
});
