app.controller("myCtrl",function($scope,$http){
	showPerformanceReport();
	$scope.rowLimit = 5;

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
	    $scope.msg = "test";

function showPerformanceReport(){
	    
	    	$http.get("/performance/report")
	    	.then(function(res){
	    		if(res.status=='200'){
	    			$scope.ratingList = res.data;	
	    		console.log($scope.ratingList);
	    		}
	    	}).catch(function(err){
	    		connsole.log(err);
	    	})
	    }


	$scope.sortColmn = "name";
	$scope.reverseSort = false;
	$scope.sortData = function(column){
		$scope.reverseSort = ($scope.sortColmn == column)? !$scope.reverseSort:false;
		$scope.sortColmn = column;
	}
	$scope.gateSortClass = function(column){
		if($scope.sortColmn==column){
			return	$scope.reverseSort ? 'arrow-down':'arrow-up'
		}
	}
	    

	
});