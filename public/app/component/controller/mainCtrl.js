angular.module('myApp').controller('mainCtrl', function($scope, mainSvc, $location, $stateParams, $timeout, $anchorScroll) {
  console.log($stateParams);
  $scope.customer = $stateParams.user;
  $scope.getData = function() {
    mainSvc.getData().then(function(res) {
      // console.log(res.data);
      $scope.datas = res.data;
    });
  };
  $scope.$on('$routeChangeSuccess', function () {
    $scope.isIndexPage = $location.path() === '/';
});
$scope.getDataFour = function() {
  mainSvc.getDataFour().then(function(res) {
    // console.log(res.data);
    $scope.fours = res.data;
  });
};
$scope.getDataFourStain = function() {
  mainSvc.getDataFourStain().then(function(res) {
    $scope.stains = res.data;
  });
};
$scope.getDataFourSunglass = function() {
  mainSvc.getDataFourSunglass().then(function(res) {
    $scope.sunglasses = res.data;
  });
};
$scope.scrollTo = function(id) {
  $timeout(function(){
    $location.hash(id);
    $anchorScroll();
  }, 0);
};

  $scope.getData();
  $scope.getDataFour();
  $scope.getDataFourStain();
  $scope.getDataFourSunglass();

});
