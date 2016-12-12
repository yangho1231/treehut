angular.module('myApp').controller('registerCtrl', function($scope, mainSvc, $state) {
  $scope.formModel = {};
  $scope.onSubmit = function(valid) {
    console.log($scope.formModel);
    if(valid) {
      console.log("Submitted");
      console.log($scope.formModel);

      mainSvc.postUser($scope.formModel).then(function(res) {
          console.log(res);
          if (res.data === "username taken") {
            $scope.formModel.username = "";
            alert("Username already taken. Please choose another.");
            $scope.userError = true;
            $("#username").focus();
          }
          $state.go('login');
      });
    }
    else {
      alert("No Way!!");
    }
  };
});
