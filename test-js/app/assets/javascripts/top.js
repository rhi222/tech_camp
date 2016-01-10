window.addEventListener("load", function() {
	$("li").on("click", function() {
		$("li.selected").removeClass("selected");
		$(this).addClass("selected");
		$('.contents div').hide(); // 二つの要素を非表示にする
		$("." + this.id).show();
	});
});
