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
      controller: 'orderCtrl'
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
    })
    .state('watches', {
      url: '/watches',
      templateUrl: './assets/views/watches.html',
      controller: 'watchesCtrl'
    })
    .state('17', {
      url: '/watches/17',
      templateUrl: './assets/views/1.7.html',
      controller: '1.7Ctrl'
    })
    .state('13', {
      url: '/watches/13',
      templateUrl: './assets/views/1.3.html',
      controller: '1.3Ctrl'
    });
    $urlRouterProvider
    .otherwise('/');
  });
