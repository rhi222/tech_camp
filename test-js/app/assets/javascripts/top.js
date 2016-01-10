console.log("Hello world");

function printHelloWithButton() {
	var btn = document.querySelector("input");
	// ボタンをDOMオブジェクトとして取得し、変数btnに代入する
	//
	function printHello() {
		console.log("Hello world again");
	}
	
	btn.addEventListener("click", printHello);
	//   // ボタンのDOMオブジェクトであるbtnに対して、
	//   // clickイベントとprintHello関数を紐付ける仕組みであるイベントリスナを追加する
}

window.addEventListener("load", printHelloWithButton);

