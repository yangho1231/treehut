angular.module('myApp').controller('hotCtrl', function($scope, mainSvc) {
  $scope.currentPage = 1;
  $scope.maxPages = 2;

  $scope.getData = function() {
      mainSvc.getData().then(function(res) {
        $scope.datas = res.data;
      });
  };
  $scope.prev = function() {
    if($scope.currentPage > 1) {
      $scope.currentPage--;
      $scope.data();
    }
  };
  $scope.next = function() {
    if($scope.next < $scope.maxPages) {
      $scope.currentPage++;
      $scope.data();
    }
  };
  $scope.getData();
});
