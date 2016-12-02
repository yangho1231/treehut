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
      controller: 'mainCtrl'
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
    });
    $urlRouterProvider
    .otherwise('/');
  });
