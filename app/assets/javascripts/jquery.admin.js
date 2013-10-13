$(function(){

	


 	
/******************
* jQuery.masonry
******************/	
	var $container = $('.container');
	$container.imagesLoaded(function(){
		$container.masonry({
			itemSelector: '.item',
			isAnimated: true,
			duration: 4000,
			columnWidth: 200,
			isFitWidth: true
		});
	});
	
	

/******************
* minimalect
*セレクトの形式変更
******************/

	$("select").minimalect();



/******************
* ★を押した時の処理
******************/

	$(".star").toggle(function(){
		$(this).css("color","#FF0");
		$(this).find(".icon-star-empty").removeClass("icon-star-empty").addClass("icon-star");
	},function(){
		$(this).css("color","#858585");
		$(this).find(".icon-star").removeClass("icon-star").addClass("icon-star-empty");
	});



/******************
* 公開非公開の処理
******************/
	
	$(".status").toggle(function(){
		$(this).html("非公開");
	},function(){
		$(this).html("公開");
	});


	$(".dell").click(function(){
		if(confirm("記事を削除しますか？")){
			$(this).parents(".box1").hide();
		}
	})


})