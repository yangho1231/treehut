angular.module('myApp').controller('hotCtrl', function($scope, mainSvc, $anchorScroll) {
  $scope.currentPage = 1;
  $scope.maxPages = 2;
 function paginator(count) {
   var pagination = [];
   var pageCount = Math.floor(count/21);
   for(var i = 1; i <= pageCount; i++) {
     pagination.push({
       text: "page " + i,
       pageNum : i
     });
   }
   return pagination;
 }
 // $scope.getNext = function(pageNum) {
 //   mainSvc.getNext(pageNum).then(function(res) {
 //     $scope.datas = res.data;
 //   });
 // };
  $scope.getData = function(pageNum) {

      mainSvc.getData(pageNum).then(function(res) {
        $scope.datas = res.data.all;
        $scope.pages = paginator(res.data.count[0].count);

      });
  };
  $scope.scrollTo = function(id) {
    $location.hash(id);
    $anchorScroll();
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
