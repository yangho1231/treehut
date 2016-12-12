angular.module('myApp').controller('orderCtrl', function($scope, $stateParams, mainSvc) {
    mainSvc.getOrders().then(function(response){
      console.log("response", response.data);
      $scope.orders = response.data;

      mainSvc.getOrderTotal($scope.orders[0].order_id).then(function(response) {
        console.log(response.data);
        $scope.total = response.data[0].order_total;
      });
    });
});
