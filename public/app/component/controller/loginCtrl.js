angular.module('myApp').controller('loginCtrl', function($scope, $state, mainSvc) {

  $scope.login = function(user) {
    mainSvc.login(user).then(function(res) {
        $state.go('home', {user: res.data[0]});
      })
    .catch(function(err){
      alert('user not found');
    });
  };
});
