angular.module('myApp').controller('infoCtrl', function($scope, mainSvc, $stateParams, $state) {

  $scope.getIndividual = function(id) {
    mainSvc.getIndividual(id).then(function(res) {
      $scope.data = res;
      $scope.changeImage($scope.data.img1);
    });
  };
  $scope.getIndividual($stateParams.id);

  $scope.changeImage = function(imgUrl) {
    console.log(imgUrl);
      $scope.mainImg = imgUrl;
  };
  $scope.addToCart = function(productId, quantity) {
    console.log(productId, quantity);
    mainSvc.addItemToCart(productId, quantity, mainSvc.customer.user_id).then(function(res) {
    });
  };
});
