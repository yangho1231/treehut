angular.module('myApp').controller('mainCtrl', function($scope, mainSvc) {
  $scope.getData = function() {
    mainSvc.getData().then(function(res) {

      $scope.datas = res.data;
      
    });
  };
  $scope.getData();

});
