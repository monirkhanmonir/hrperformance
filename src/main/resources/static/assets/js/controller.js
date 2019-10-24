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


	
	    
	    $scope.taskId = "";
	    
	    $scope.showTask = function(){
	    	var THIS = this;
	    	
	    	$http.get("/showtaskById/"+this.taskId)
	    	.then(function(res){
	    		if(res.status=='200'){
	    			console.log(res);
	    			$scope.task = res.data;
	    		}
	    		
	    	}).catch(function(err){
	    		console.log(err);
	    	})
	    }
	    
	    $scope.msg = "test";
	    
	    $scope.showEmployee= function(){
	    
	    	$http.get("/employee/getEmpById/"+this.id)
	    	.then(function(res){
	    		if(res.status=='200'){
	    			$scope.employee = res.data;
	    		}
	    	}).catch(function(err){
	    		console.log(err);
	    	})
	    }
	    

	
});