
    var app = angular.module('myApp', []);
    app.controller('myCtrl', function ($scope, $http) {

        $scope.myver = "select";


    $scope.load = function () {
        $http({
            url: "login.ashx",
            method: "POST",
            contentType: "application/json; charset=utf-8",
            params: { ver: $scope.myver }


        }).then(function (response) {
            $scope.myWelcome = response.data;
        });
    }

        $scope.login = function () {                        

                $http({
                    url: "login.ashx",
                    method: "POST",
                    contentType: "application/json; charset=utf-8",
                    params: { username: $scope.myusername, password: $scope.mypassword }
                    }).then(function (response) {

                    if (response.data == 'true') {
                    
                        localStorage.setItem('username', $scope.myusername);
                        localStorage.setItem('password', $scope.mypassword);                                           
    
                    }
                

                    if (response.data == 'false')
                    alert('false');

                    $scope.myWelcome = response.data;
                       });
                }

        $scope.islogin = function () {

            var user = localStorage.getItem("username");

            alert(user);

            if (user == null)
                alert('notl login');
            if (user != null)
                alert('login');

        }
    
        $scope.logout = function () {

            alert('logout');
            localStorage.removeItem('username');
            localStorage.removeItem('password');
            
            
        }


        //$scope.vert = function () {
        //$scope.load();
        //};


    });

