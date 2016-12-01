angular.module('myApp').controller('registerCtrl', function($scope, mainSvc) {
  $scope.formModel = {};

  $scope.onSubmit = function(valid) {
    console.log($scope.formModel);
    if(valid) {
      console.log("Submitted");
      console.log($scope.formModel);
      mainSvc.postUser($scope.formModel).then(function(res) {
          console.log(res);
      });
    }
    else {
      console.log("No Way!!");
    }
  };
});
