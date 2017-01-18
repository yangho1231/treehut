'use strict';

angular.module('myApp', ['ui.router']).config(function ($stateProvider, $urlRouterProvider) {
  $stateProvider.state('home', {
    url: '/',
    templateUrl: '../assets/views/home.html',
    controller: 'mainCtrl',
    params: { user: null }
  }).state('hot', {
    url: '/hot',
    templateUrl: './assets/views/hot.html',
    controller: 'hotCtrl'
  }).state('info', {
    url: '/info/:id',
    templateUrl: './assets/views/info.html',
    controller: 'infoCtrl'
  }).state('register', {
    url: '/register',
    templateUrl: './assets/views/register.html',
    controller: 'registerCtrl'
  }).state('login', {
    url: '/login',
    templateUrl: './assets/views/login.html',
    controller: 'loginCtrl'
  }).state('myPage', {
    url: '/account/:id',
    templateUrl: './assets/views/myPage.html',
    params: { user: null },
    controller: 'orderCtrl'
  }).state('cart', {
    url: '/cart',
    templateUrl: './assets/views/cart.html',
    controller: 'cartCtrl'

  }).state('sunglasses', {
    url: '/sunglasses',
    templateUrl: './assets/views/sunglasses.html',
    controller: 'sunglassesCtrl'
  }).state('watches', {
    url: '/watches',
    templateUrl: './assets/views/watches.html',
    controller: 'watchesCtrl'
  }).state('17', {
    url: '/watches/17',
    templateUrl: './assets/views/1.7.html',
    controller: '1.7Ctrl'
  });
  $urlRouterProvider.otherwise('/');
});
'use strict';

angular.module('myApp').controller('1.7Ctrl', function ($scope, mainSvc) {
  $scope.get17 = function () {
    mainSvc.get17().then(function (res) {
      $scope.infos = res;
      console.log(res.data);
    });
  };
  $scope.get17();
});
'use strict';

angular.module('myApp').controller('cartCtrl', function ($scope, mainSvc) {
  mainSvc.getCart().then(function (response) {
    console.log(response);
    $scope.cart = response.data;
  });
  // $scope.cart = mainSvc.cart;


  // mainSvc.getCartTotal(orderId).then(function(res) {
  //   $scope.cart = res;
  // });
  $scope.total = mainSvc.total;
  $scope.removeItemFromCart = function (productId) {
    mainSvc.removeItemFromCart(productId, mainSvc.customer.user_id).then(function (res) {
      $scope.cart = res.data;
    });
  };

  $scope.changeQuantity = function (productId, quantity) {
    mainSvc.changeQuantity($scope.cart[0].order_id, productId, quantity).then(function (response) {
      $scope.cart = response.data;
    });
  };

  $scope.placeOrder = function () {
    mainSvc.placeOrder().then(function (res) {
      $scope.cart = [];
      sweetAlert("Order placed!", "Order has been confirmed", "success");
    });
  };
});
'use strict';

angular.module('myApp').controller('hotCtrl', function ($scope, mainSvc, $anchorScroll, $timeout, $location) {
  $scope.currentPage = 1;
  $scope.maxPages = 2;
  function paginator(count) {
    var pagination = [];
    var pageCount = Math.floor(count / 21);
    for (var i = 1; i <= pageCount; i++) {
      pagination.push({
        text: i,
        pageNum: i
      });
    }
    return pagination;
  }
  // $scope.getNext = function(pageNum) {
  //   mainSvc.getNext(pageNum).then(function(res) {
  //     $scope.datas = res.data;
  //   });
  // };
  $scope.getData = function (pageNum) {

    mainSvc.getData(pageNum).then(function (res) {
      $scope.datas = res.data.all;
      $scope.pages = paginator(res.data.count[0].count);
    });
  };
  $scope.scrollTo = function (id) {
    $timeout(function () {
      $location.hash(id);
      $anchorScroll();
    }, 0);
  };

  // $scope.prev = function() {
  //   if($scope.currentPage > 1) {
  //     $scope.currentPage--;
  //     $scope.getData();
  //   }
  // };
  // $scope.next = function() {
  //   if($scope.next < $scope.maxPages) {
  //     $scope.currentPage++;
  //     $scope.getData();
  //   }
  // };
  $scope.getData(0);
});
'use strict';

angular.module('myApp').controller('infoCtrl', function ($scope, mainSvc, $stateParams, $state) {

  $scope.getIndividual = function (id) {
    mainSvc.getIndividual(id).then(function (res) {
      console.log("getIndividual", res);
      $scope.data = res;
      $scope.changeImage($scope.data.img1);
    });
  };
  $scope.getIndividual($stateParams.id);

  $scope.changeImage = function (imgUrl) {
    console.log(imgUrl);
    $scope.mainImg = imgUrl;
  };
  $scope.addToCart = function (productId, quantity, price) {
    console.log(productId, quantity);
    mainSvc.addItemToCart(productId, quantity, price, mainSvc.customer.user_id).then(function (res) {
      $state.go('cart');
    });
  };
});
'use strict';

angular.module('myApp').controller('loginCtrl', function ($scope, $state, mainSvc) {

  $scope.login = function (user) {
    mainSvc.login(user).then(function (res) {
      if (res.data[0].username) {
        mainSvc.customer = res.data[0];
        $scope.users = res.data[0];
        console.log("Customer", res.data[0]);
        $state.go('home', { user: res.data[0] });
      }
    }).catch(function (err) {
      alert('user not found');
    });
  };
});
'use strict';

angular.module('myApp').controller('mainCtrl', function ($scope, mainSvc, $location, $stateParams) {
  console.log($stateParams);
  $scope.customer = $stateParams.user;
  $scope.getData = function () {
    mainSvc.getData().then(function (res) {
      // console.log(res.data);
      $scope.datas = res.data;
    });
  };
  $scope.$on('$routeChangeSuccess', function () {
    $scope.isIndexPage = $location.path() === '/';
  });
  $scope.getDataFour = function () {
    mainSvc.getDataFour().then(function (res) {
      // console.log(res.data);
      $scope.fours = res.data;
    });
  };
  $scope.getDataFourStain = function () {
    mainSvc.getDataFourStain().then(function (res) {
      $scope.stains = res.data;
    });
  };
  $scope.getDataFourSunglass = function () {
    mainSvc.getDataFourSunglass().then(function (res) {
      $scope.sunglasses = res.data;
    });
  };

  $scope.getData();
  $scope.getDataFour();
  $scope.getDataFourStain();
  $scope.getDataFourSunglass();
});
'use strict';

angular.module('myApp').controller('orderCtrl', function ($scope, $stateParams, mainSvc) {
  mainSvc.getOrders().then(function (response) {
    console.log("response", response.data);
    $scope.orders = response.data;

    mainSvc.getOrderTotal($scope.orders[0].order_id).then(function (response) {
      console.log(response.data);
      $scope.total = response.data[0].order_total;
    });
  });
});
'use strict';

angular.module('myApp').controller('registerCtrl', function ($scope, mainSvc, $state) {
  $scope.formModel = {};
  $scope.onSubmit = function (valid) {
    console.log($scope.formModel);
    if (valid) {
      console.log("Submitted");
      console.log($scope.formModel);

      mainSvc.postUser($scope.formModel).then(function (res) {
        console.log(res);
        if (res.data === "username taken") {
          $scope.formModel.username = "";
          swal("Oops", "Username already taken. Please choose another.", "error");
          $scope.userError = true;
          $("#username").focus();
        }

        $state.go('login');
      });
    } else {
      swal("Oops", "No Way!!", "error");
    }
  };
});
'use strict';

angular.module('myApp').controller('sunglassesCtrl', function ($scope, mainSvc) {
  $scope.getSunglasses = function () {
    mainSvc.getSunglasses().then(function (res) {
      $scope.sunglasses = res;

      console.log(res);
    });
  };
  $scope.test = "This is a test";
  $scope.getSunglasses();
});
'use strict';

angular.module('myApp').controller('watchesCtrl', function ($scope, mainSvc) {
  $scope.getWatches = function () {
    mainSvc.getWatches().then(function (res) {
      $scope.watches = res;
    });
  };
  $scope.getWatches();
});
'use strict';

angular.module('myApp').directive('bottomMenu', function () {
  return {
    restrict: 'EA',
    templateUrl: '../../../assets/views/bottompage.html'
  };
});
'use strict';

angular.module('myApp').directive('homeMenu', function () {
  return {
    restrict: 'EA',
    templateUrl: '../../../assets/views/homepage-menu.html',

    link: function link(scope, element, attributes) {
      $(window).on('scroll', function () {

        if ($(window).scrollTop() > 50) {
          $('.navbar-brand>img').css({ "filter": "brightness(1) invert(0)" });
          $('.navbar').css({ "background-color": "white", "border-bottom": "1px solid black" });
          $('.nav.navbar-nav.navbar-right li').css({ "color": "black" });
          $('.container-fluid').css({ "height": "15vh" });
        } else if ($(window).scrollTop() < 50) {
          $('.navbar-brand>img').css({ "filter": "brightness(0) invert(1)" });
          $('.navbar').css({ "background-color": "transparent", "border-bottom": "none" });
          $('#navbar-right li').css({ "color": "white" });
        }
      });
    }
  };
});

// $('.infoBox').on('mouseover', function() {
//
//   $('.infoBox').animate({height: '400px', width: '700px'});
// });
'use strict';

angular.module('myApp').directive('menuLeft', function () {
  return {
    restrict: 'EA',
    templateUrl: '../../../assets/views/menu-left.html'
  };
});
'use strict';

angular.module('myApp').directive('menDirective', function () {
  return {
    restrict: 'EA',
    templateUrl: '../../../assets/views/menu-top.html'
  };
});
'use strict';

angular.module('myApp').directive('menuDirective', function () {
  return {
    restrict: 'EA',
    templateUrl: '../../../assets/views/test.html'
  };
});
'use strict';

angular.module('myApp').service('mainSvc', function ($http, $rootScope) {
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
  this.getWatches = function () {
    return $http.get('/api/product/watches').then(function (res) {
      // console.log(res);
      return res.data;
    });
  };
  this.get17 = function () {
    return $http.get('/api/product/watches/1.7-inches').then(function (res) {
      // console.log(res);
      return res.data;
    });
  };
  this.getSunglasses = function () {
    return $http.get('/api/product/sunglasses').then(function (res) {
      return res.data;
    });
  };
  this.getCart = function () {
    console.log(this.customer);
    return $http({
      method: 'GET',
      url: '/api/cart/' + this.customer.user_id
    }).then(function (response) {
      return response;
    });
  };
  this.getCartTotal = function (orderId) {
    return $http({
      method: 'GET',
      url: 'https://treehutclone.herokuapp.com/api/cartinfo',
      data: {
        order_id: orderId
      }
    });
  };
  this.addItemToCart = function (product, quantity, price, userId) {
    return $http({
      method: 'POST',
      url: 'https://treehutclone.herokuapp.com/api/cart',
      data: {
        product: product,
        quantity: quantity,
        price: price,
        userId: userId
      }
    });
  };
  this.getItemInfo = function () {
    return $http({
      method: 'GET',
      url: 'https://treehutclone.herokuapp.com/api/cart'
    }).then(function (res) {
      console.log(res);
      return res;
    });
  };

  this.changeQuantity = function (orderId, productId, quantity) {
    return $http({
      method: 'PUT',
      url: '/api/updateCart',
      data: {
        userId: this.customer.user_id,
        orderId: orderId,
        productId: productId,
        quantity: quantity
      }
    }).then(function (response) {
      return response;
    });
  };
  this.placeOrder = function () {

    return $http({
      method: 'POST',
      url: 'https://treehutclone.herokuapp.com/api/order',
      data: {
        user_id: this.customer.user_id

      }
    }).then(function (res) {
      console.log(res);
      return res;
    });
  };
  this.removeItemFromCart = function (productId, userId) {
    console.log("productId", productId);
    return $http.post('/api/remove-product', { productId: productId, userId: userId });
    // return $http({
    //   method: 'DELETE',
    //   url: '/api/removeProduct',
    //   data: {
    //     productId: productId
    //   }
    // });
  };
  this.getData = function (pageNum) {
    return $http({
      method: 'GET',
      url: 'https://treehutclone.herokuapp.com/api/product/page/' + pageNum
    }).then(function (res) {
      console.log(res);
      return res;
    });
  };
  this.getDataFour = function () {
    return $http({
      method: 'GET',
      url: 'https://treehutclone.herokuapp.com/api/product/four'
    }).then(function (res) {
      return res;
    });
  };
  this.getDataFourStain = function () {
    return $http({
      method: 'GET',
      url: 'https://treehutclone.herokuapp.com/api/product/stain'
    }).then(function (res) {
      return res;
    });
  };
  this.getDataFourSunglass = function () {
    return $http({
      method: 'GET',
      url: 'https://treehutclone.herokuapp.com/api/product/sunglass'
    }).then(function (res) {
      return res;
    });
  };
  this.getIndividual = function (id) {
    console.log(id);
    return $http({
      method: 'GET',
      url: 'https://treehutclone.herokuapp.com/api/product/' + id
    }).then(function (res) {
      // console.log(res.data);
      return res.data[0];
    });
  };
  this.postUser = function (user) {
    return $http({
      method: 'POST',
      url: 'https://treehutclone.herokuapp.com/api/user',
      data: user
    });
  };
  this.login = function (user) {
    return $http({
      method: 'POST',
      url: 'https://treehutclone.herokuapp.com/api/login',
      data: user
    });
  };
  this.changeImage = function (imgId) {
    return $http({
      method: 'GET',
      url: 'https://treehutclone.herokuapp.com/api/img'
    }).then(function (res) {
      return res;
    });
  };
  this.getOrders = function () {
    return $http({
      method: 'GET',
      url: 'https://treehutclone.herokuapp.com/api/orders/' + this.customer.user_id
    });
  };

  this.getOrderTotal = function (id) {
    return $http({
      method: 'GET',
      url: '/api/orderTotal/' + id
    });
  };
  // return $http.get('/api/product/sunglasses').then(function(res) {
  //   return res;
  // });

});