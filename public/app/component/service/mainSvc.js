angular.module('myApp').service('mainSvc', function($http) {
  this.getData = function() {
    return $http({
      method: 'GET',
      url: 'http://localhost:3000/api/product'
    }).then(function(res) {
      console.log(res);
      return res;
    });
  };
});
