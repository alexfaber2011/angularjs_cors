myApp = angular.module("CorsApp", [])

corsController = ($scope, $http) ->
  $http.get("http://localhost:4000/").success((data, status, headers, config) ->
    console.log "Success: ", data
    $scope.message = data.message
  ).error (data, status, headers, config) ->
    console.log "Error: ", data

myApp.controller('corsController', corsController)