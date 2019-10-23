app.controller("myCtrl",function($scope,$http){
	

	$scope.jobKnowledge= undefined || 0;
	$scope.workquality= undefined || 0;
	$scope.attendance= undefined || 0;
	$scope.productivity=undefined || 0;
	$scope.communicationSkills= undefined || 0;
	$scope.dependability= undefined || 0;
	$scope.overall = 0;
	
	$scope.add = function(){
		var jk = Number(this.jobKnowledge);
		var wq = Number(this.workquality);
		var atd = Number(this.attendance);
		var pdt = Number(this.productivity);
		var cs = Number(this.communicationSkills);
		var dp = Number(this.dependability);
		this.overall = jk+wq+atd+pdt+cs+dp;
	}
	
	
	/*$scope.overallRating=$scope.jobKnowledge+$scope.workquality;*/
	
	
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