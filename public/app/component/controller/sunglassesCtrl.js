angular.module('myApp').controller('sunglassesCtrl', function($scope, mainSvc) {
  $scope.getSunglasses = function() {
    mainSvc.getSunglasses().then(function(res) {
      $scope.sunglasses = res.data;
      console.log(res);
    });
  };
  $scope.getSunglasses();
});
