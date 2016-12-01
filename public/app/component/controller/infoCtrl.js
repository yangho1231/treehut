angular.module('myApp').controller('infoCtrl', function($scope, mainSvc, $stateParams, $state) {
  $scope.getIndividual = function(id) {
    mainSvc.getIndividual(id).then(function(res) {
      // console.log(res);
      $scope.data = res;
    });
  };
  $scope.getIndividual($stateParams.id);
});
