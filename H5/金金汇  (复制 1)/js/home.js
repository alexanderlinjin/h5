// JavaScript Document

$(function(){
	
	//lazyload
	$("img.lazy").show().lazyload({effect : "fadeIn"});
	
	
	$("img.lazy_focus").show().lazyload({event:"lazy_focus", effect : "fadeIn"});
	$('.focus_list li:eq(0) img').trigger("lazy_focus").addClass("complete");
	 
		   

		   
	//轮播动画
	var _AdList = $('.focus_box .focus_list');
	var _listWidth = $('.focus_box .focus_list li:eq(0)').width();
	var _listCount = $('.focus_box .focus_list li').length;
	var _nav = $('.focus_box .focus_nav a');
	var _AdWarp = $('.focus_box');
	var _speed = 500;
	var _wait = 4500;
	var _sue = 0;
	_AdList.css({'width':_listCount*_listWidth});
	var scrollAd = function(sue, speed){
		_AdList.stop().animate({left:-_listWidth*sue}, speed, 'easeInOutQuad');
		_nav.removeClass('oncur').eq(sue).addClass('oncur');
		lazy_focus(sue);
	}
	//scrollAd();
	var scrollAdRun = setInterval(function(){
			_sue++;
			if(_sue == _listCount)_sue = 0;
			scrollAd(_sue, _speed);
		},
	_wait+_speed);
	
	var lazy_focus = function (s) {
		if(!$('.focus_list li:eq('+s+') img').hasClass("complete")){
			$('.focus_list li:eq('+s+') img').trigger("lazy_focus").addClass("complete");
		}
	}

	_AdWarp.live('mouseleave mouseenter', function(e){
		var type = e.type;
		if(type == 'mouseenter'){
			clearInterval(scrollAdRun);
		}else if(type == 'mouseleave'){
			scrollAdRun = setInterval(function(){
				_sue++;
				if(_sue == _listCount)_sue = 0;
				scrollAd(_sue, _speed);
			}, _wait+_speed);
		}
	})
	.delegate('p.focus_nav a', 'mouseenter', function(e){
		_sue = $(e.target).index();
		var type = e.type;
		_AdList.stop().animate({left:-_listWidth*_sue}, _speed, 'easeInOutQuad');
		_nav.removeClass('oncur').eq(_sue).addClass('oncur');
		lazy_focus(_sue);
		
	});

	
});