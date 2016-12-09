angular.module('myApp').service('mainSvc', function($http, $rootScope) {
  this.customer = {};
  this.cart = [];

  // this.total = {
  //   total: this.cart[0].product.product_price * this.cart[0].quantity
  // };
  // this.getSunglasses = function() {
  //   return $http.get('/api/product/sunglasses').then(function(res) {
  //     console.log (res);
  //   });
    // retur
  this.getWatches = function() {
    return $http.get('/api/product/watches').then(function(res) {
      // console.log(res);
      return res.data;
    });
  };
  this.get17 = function() {
    return $http.get('/api/product/watches/1.7-inches').then(function(res) {
      // console.log(res);
      return res.data;
    });
  };
  this.getSunglasses = function() {
    return $http.get('/api/product/sunglasses').then(function(res) {
      return res.data;
    });
  };
  this.getCart = function() {
    return $http({
      method: 'GET',
      url: '/api/cart/' + this.customer.user_id
    }).then(function(response) {
      return response;
    });
  };
  this.getCartTotal = function(orderId) {
    return $http({
      method: 'GET',
      url: 'http://localhost:3000/api/cartinfo',
      data: {
        order_id: orderId
      }
    });
  };
  this.addItemToCart = function(product, quantity, userId) {
    return $http({
      method: 'POST',
      url: 'http://localhost:3000/api/cart',
      data: {
        product: product,
        quantity: quantity,
        userId: userId
      }
    });
  };
  this.getItemInfo = function() {
    return $http({
      method: 'GET',
      url: 'http://localhost:3000/api/cart'
    }).then(function(res) {
      console.log(res);
      return res;
    });
  };

  this.changeQuantity = function(orderId, productId, quantity) {
    return $http({
      method: 'PUT',
      url: '/api/updateCart',
      data: {
        userId: this.customer.user_id,
        orderId: orderId,
        productId: productId,
        quantity: quantity
      }
    }).then(function(response) {
      return response;
    });
  };
  this.placeOrder = function() {

    return $http({
      method: 'POST',
      url: 'http://localhost:3000/api/order',
      data: {
        user_id: this.customer.user_id,

      }
    }).then(function(res) {
      console.log(res);
      return res;
    });
  };
  this.removeItemFromCart = function(productId, userId) {
    console.log("productId", productId);
    return $http.post('/api/remove-product', {productId: productId, userId: userId});
    // return $http({
    //   method: 'DELETE',
    //   url: '/api/removeProduct',
    //   data: {
    //     productId: productId
    //   }
    // });
  };
  this.getData = function(pageNum) {
    return $http({
      method: 'GET',
      url: 'http://localhost:3000/api/product/page/' + pageNum
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
    });
  };
  this.login = function(user) {
    return $http({
      method: 'POST',
      url: 'http://localhost:3000/api/login',
      data: user
    });
  };
  this.changeImage = function(imgId) {
    return $http({
      method: 'GET',
      url: 'http://localhost:3000/api/img'
    }).then(function(res) {
      return res;
    });
  };
  this.getOrders = function() {
    return $http({
      method: 'GET',
      url: 'http://localhost:3000/api/orders/' + this.customer.user_id
    });
  };

  this.getOrderTotal = function(id) {
    return $http({
      method: 'GET',
      url: '/api/orderTotal/' + id
    });
  };
    // return $http.get('/api/product/sunglasses').then(function(res) {
    //   return res;
    // });


});
