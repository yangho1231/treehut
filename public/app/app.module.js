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
    });
    $urlRouterProvider
    .otherwise('/');
  });
