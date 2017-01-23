angular.module('myApp').controller("1.3Ctrl", function($scope, mainSvc) {
    $scope.get13 = function() {
        mainSvc.get13().then(function(res) {
            $scope.infos = res;
        });
    };
    $scope.get13();
});