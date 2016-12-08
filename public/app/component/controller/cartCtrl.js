angular.module('myApp').controller('cartCtrl', function($scope, mainSvc) {
  mainSvc.getCart().then(function(response) {
    $scope.cart = response.data;
  });
  // $scope.cart = mainSvc.cart;



  // mainSvc.getCartTotal(orderId).then(function(res) {
  //   $scope.cart = res;
  // });
  $scope.total = mainSvc.total;
  $scope.removeItemFromCart = function(productId) {
    mainSvc.removeItemFromCart(productId, mainSvc.customer.user_id).then(function(res) {
      $scope.cart = res.data;
    });
  };

  $scope.changeQuantity = function(productId, quantity) {
    mainSvc.changeQuantity($scope.cart[0].order_id, productId, quantity).then(function(response) {
      $scope.cart = response.data;
    });
  };

  $scope.placeOrder = function() {
    mainSvc.placeOrder().then(function(res) {
      console.log(res);
      alert("Order placed");
    });
  };



});
