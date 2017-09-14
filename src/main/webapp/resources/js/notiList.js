/**
 * 허주한
 */

$(function(){
	
	
//	$("#gradPageBtn"+p).addClass("disabled");
	
	if(p===""||p==="1"){
		$("#prevBtn").addClass("disabled");
	}
	if(p===totalPage){
		$("#nextBtn").addClass("disabled");
	}
	
	if(p <= 10){
		$("#prevTBtn").addClass("disabled");
	}
	
	if(endPage >= totalPage){
		$("#nextTBtn").addClass("disabled");
	}
	
})