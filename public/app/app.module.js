angular.module('myApp',['ui.router'])
  .config(function($stateProvider, $urlRouterProvider) {
    $stateProvider
    .state('home', {
      url: '/',
      templateUrl: '../assets/views/home.html',
      controller: 'mainCtrl',
      params: {user: null}
    })
    .state('hot', {
      url: '/hot',
      templateUrl: './assets/views/hot.html',
      controller: 'hotCtrl'
    })
    .state('info', {
      url: '/info/:id',
      templateUrl: './assets/views/info.html',
      controller: 'infoCtrl'
    })
    .state('register', {
      url: '/register',
      templateUrl: './assets/views/register.html',
      controller: 'registerCtrl'
    })
    .state('login', {
      url: '/login',
      templateUrl: './assets/views/login.html',
      controller: 'loginCtrl'
    })
    .state('myPage', {
      url: '/account/:id',
      templateUrl: './assets/views/myPage.html',
      params: {user: null},
      controller: function($scope, $stateParams) {
        if (!$stateParams.user && localStorage.getItem("user")) {
            $scope.user = JSON.parse(localStorage.getItem("user"));
        } else if (!$stateParams.user) {
            $scope.user = {username: "Guest"};
        } else {
            $scope.user = $stateParams.user;
            localStorage.setItem("user", JSON.stringify($scope.user));
        }
      }

    })
    .state('cart', {
      url: '/cart',
      templateUrl: './assets/views/cart.html',
      controller: 'cartCtrl'

    })
    .state('sunglasses', {
      url: '/sunglasses',
      templateUrl: './assets/views/sunglasses.html',
      controller: 'sunglassesCtrl'
    });
    $urlRouterProvider
    .otherwise('/');
  });
