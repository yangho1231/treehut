angular.module('myApp',['ui.router'])
  .config(function($stateProvider, $urlRouterProvider) {
    $stateProvider
    .state('home', {
      url: '/',
      templateUrl: '../assets/views/home.html'
    })
    .state('hot', {
      url: '/hot',
      templateUrl: './assets/views/hot.html'
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
    });
    $urlRouterProvider
    .otherwise('/');
  });
