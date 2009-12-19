/*
 * 
 * 
 * 
 * COPYRIGHT : (C) 2006 Arthur C. Ralfs
 */

var Num;

function init() {
}

function makeRequest(stringNum) {
    Num = stringNum;
    http_request = new XMLHttpRequest();	 
    var command = document.getElementById('comm'+stringNum).value;
    http_request.open('POST', 'http://127.0.0.1:8085', true);
    http_request.onreadystatechange = handleResponse;
//    http_request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
//    http_request.send("command="+encodeURIComponent(command));
   http_request.setRequestHeader('Content-Type', 'text/plain');
   http_request.send("command="+command);
}

function handleResponse() {
    if (http_request.readyState == 4) {
	if (http_request.status == 200) {
            stringNum = Num;
// get the appropriate boxes
	    spadCommBox = document.getElementById('spadComm'+stringNum);
	    mathAnsBox = document.getElementById('mathAns'+stringNum);
// test to see if this is virgin, i.e. see if mathAns is empty and if so
// make a restore button
            if ( !mathAnsBox.hasChildNodes() ) {
                restorForm = document.createElement('form');
		restorForm.setAttribute("id","formRestor"+stringNum);
		restorForm.setAttribute("action","javascript:restorComm('"+stringNum+"')");
	        restorBut = document.createElement('input');
		restorBut.setAttribute('type','submit');
		restorBut.setAttribute('value','restore');
		restorBut.setAttribute('class','restore');
		restorForm.appendChild(restorBut);
		spadCommBox.insertBefore(restorForm,document.getElementById('commSav'+stringNum));
	    }
// remove previous mathAns box
	    spadCommBox.removeChild(document.getElementById('mathAns'+stringNum));

// add new mathAns elememt
            mathAnsBox =
            document.createElementNS('http://www.w3.org/1999/xhtml', 'div');
	    mathAnsBox.setAttribute('id', 'mathAns'+stringNum);
	    spadCommBox.appendChild(mathAnsBox);

// stick response in div=mathBox
	    var mathString = http_request.responseText;
            var mathRange = document.createRange();
	    var mathBox = document.createElementNS('http://www.w3.org/1999/xhtml','div');
            mathRange.selectNodeContents(mathBox);
            var mathFragment = mathRange.createContextualFragment(mathString);
            mathBox.appendChild(mathFragment);
// set id on mathBox
	    var stepNum = mathBox.firstChild.firstChild.data;
	    mathBox.setAttribute('id', 'step'+stepNum);
	    mathBox.setAttribute('class', 'mathbox');

// insert everything into the document

	    mathAnsBox.appendChild(mathBox);

// delete linenum box
//            mathBox.removeChild(mathBox.firstChild);
            mathBox.firstChild.removeChild(mathBox.firstChild.firstChild);

	} else
	{
	    alert('There was a problem with the request.'+ http_request.statusText);
	}
    }
}

function restorComm(stringNum) {
//restore original command
    document.getElementById('comm'+stringNum).value =
    document.getElementById('commSav'+stringNum).firstChild.data;
//remove added mathBox
    mathAnsBox = document.getElementById('mathAns'+stringNum);
    mathAnsBox.removeChild(mathAnsBox.firstChild);
//remove restore button
    document.getElementById('spadComm'+stringNum).removeChild(document.getElementById('formRestor'+stringNum));
}