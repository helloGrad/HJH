/**
 * 허주한
 */

$(function(){
	checkBtn();
	
})

var checkBtn = function(){
	
	if(prevNo == -1){
		$("#prevBtn").addClass("disabled");
	}
	if(nextNo == -1){
		$("#nextBtn").addClass("disabled");
	}

	
}