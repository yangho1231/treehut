angular.module('myApp').controller('loginCtrl', function($scope, $state, mainSvc) {

  $scope.login = function(user) {
    mainSvc.login(user).then(function(res) {
        if (res.data[0].username) {
          $state.go('myPage', {user: res.data[0]});
        }
      })
    .catch(function(err){
      alert('user not found');
    });
  };
});
