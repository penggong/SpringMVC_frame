$(document).ready(function(){
	$(":input").attr("disabled", "disabled");
});


function refreshSwatch() {
	$SliderValue=$('#slider').slider( "value" );
	if($SliderValue==100){
		$('#slider').slider( "value", 86 );
		$(":input").removeAttr("disabled");
		$("#slider").unbind();
	}
}
$(function() {
	$("#slider").slider({
		change: refreshSwatch
	});
	// 
	// $("#slider").html('<span class="glyphicon glyphicon-arrow-right"></span>');
});