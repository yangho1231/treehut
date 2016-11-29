angular.module('myApp').controller('mainCtrl', function($scope, mainSvc, $location) {
  $scope.getData = function() {
    mainSvc.getData().then(function(res) {
      console.log(res.data);
      $scope.datas = res.data;

    });
  };
  $scope.$on('$routeChangeSuccess', function () {
    $scope.isIndexPage = $location.path() === '/';
});
  $scope.getData();

});
