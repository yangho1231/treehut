angular.module('myApp').controller('1.7Ctrl', function($scope, mainSvc) {
  $scope.get17 = function() {
    mainSvc.get17().then(function(res) {
      $scope.infos = res;
      console.log(res.data);

    });
  };
  $scope.get17();
});
