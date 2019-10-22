app.controller("myCtrl",function($scope){
	
	$scope.msg = "test";
	
	//showEmployee();
	
	/*$scope.overallRating =$scope.jobKnowledge+$scope.workquality+$scope.attendance+$scope.productivity+$scope.communicationSkills+$scope.dependability;
	
	console.log(overallRating);*/
/*	$scope.overallRating ="";
	
	$scope.overallRating = $scope.jobKnowledge;
	
	console.log($scope.jobKnowledge;t);
	*/
	
	
	
	$scope.getTask =  function () {
		console.log("call")
	        $http.get('/taskissue/onGoingTask')
	                .then(function (res) {
	                    if (res.status == '200') {
	                    	console.log("accept")
	                    //    $scope.onGoingTask = res.data;
	                    }
	                }).catch(function (err) {
	            console.log(err);
	        });
	    };
	
	
});