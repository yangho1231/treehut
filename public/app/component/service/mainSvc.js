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
  this.getDataFour = function() {
    return $http({
      method: 'GET',
      url: 'http://localhost:3000/api/product/four'
    }).then(function(res) {
      return res;
    });
  };
  this.getDataFourStain = function() {
    return $http({
      method: 'GET',
      url: 'http://localhost:3000/api/product/stain'
    }).then(function(res) {
      return res;
    });
  };
  this.getDataFourSunglass = function() {
    return $http({
      method: 'GET',
      url: 'http://localhost:3000/api/product/sunglass'
    }).then(function(res) {
      return res;
    });
  };
  this.getIndividual = function(id) {
    console.log(id);
    return $http({
      method: 'GET',
      url: 'http://localhost:3000/api/product/' + id
    }).then(function(res) {
      // console.log(res.data);
      return res.data[0];
    });
  };
  this.postUser = function(user) {
    return $http({
      method: 'POST',
      url: 'http://localhost:3000/api/user',
      data: user
    })
  }
});
