angular.module('myApp').controller('loginCtrl', function($scope, $state, mainSvc) {

  $scope.login = function(user) {
    mainSvc.login(user).then(function(res) {
        if (res.data[0].username) {
          mainSvc.customer = res.data[0];
          $scope.users  = res.data[0];
          console.log("Customer", res.data[0]);
          $state.go('home', {user: res.data[0]});

        }
      })
    .catch(function(err){
      alert('user not found');
    });
  };
});
