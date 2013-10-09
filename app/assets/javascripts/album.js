$(document).ready(function(){
	var loadFbFriendlist = function(){
		$.post('/albums/fb_friends',
		{
			level: 1
		}, function(res){
			$('#fbFriends').html(res);
			$('#fb_friendlist').dataTable({sPaginationType: "full_numbers", bJQueryUI: true});
			}
		);
	}
	
	loadFbFriendlist();

	// var showSlider = function(){
	// 	$('.flexslider').flexslider({
	// 		animation: "slide"
	// 	});
	// }
	
	// showSlider();
});