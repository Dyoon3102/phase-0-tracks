$(function() {
	$(".animate").click(function() {
		var color = $('.colorBox');
		color.animate({height: '300px', opacity: '0.4'}, "slow");
        color.animate({width: '300px', opacity: '0.8'}, "slow");
        color.animate({height: '100px', opacity: '0.4'}, "slow");
        color.animate({width: '100px', opacity: '0.8'}, "slow");
	});
});

$(function() {
	$(".toggleShow").click(function() {
		$(".1stP").toggle();
	});
});