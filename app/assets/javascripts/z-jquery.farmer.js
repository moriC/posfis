$(function(){

/******************
* jQuery.masonry
******************/
	// var $container = $('.container');
	// $container.imagesLoaded(function(){
	// 	$container.masonry({
	// 		itemSelector: '.item',
	// 		isAnimated: true,
	// 		duration: 4000,
	// 		columnWidth: 220,
	// 		//isFitWidth: true
	// 	});
	// });


	$("nav .c1").hover(function(){
		$(this).css("background-color","#b7da8e");
	},function(){
		$(this).css("background-color","#abd47b");
	});

	$("nav .c2").hover(function(){
		$(this).css("background-color","#ff7974");
	},function(){
		$(this).css("background-color","#ff605a");
	});

	$("nav .c3").hover(function(){
		$(this).css("background-color","#89dcc0");
	},function(){
		$(this).css("background-color","#75d6b5");
	});

	$("nav .c4").hover(function(){
		$(this).css("background-color","#95b7c0");
	},function(){
		$(this).css("background-color","#85acb6");
	});


	var i = 0;
	$(".num > span").html(i);
	$(".go-cart").click(function(){
		i += 1;
		$(".num > span").html(i);
	})



	$(".go-cart").on("click", function(){
		var $item = $('<p class="alert">カートに追加しました</p>').hide().stop(false).fadeIn(700);
		$("body").append($item);
		setTimeout('$(".alert").stop(false).fadeOut(700);', 2000);
	})








});