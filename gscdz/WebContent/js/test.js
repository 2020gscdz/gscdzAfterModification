/**
 * 
 */
window.onload = function() {
	MathJax.Hub.Config({
		tex2jax: {
			inlineMath: [["$", "$"], ["\\(", "\\)"]]
		}
	});

	let startBtn = document.getElementById("startBtn");
	let tipsBtn = document.getElementById("tipsBtn");
	let answerPos = document.getElementById("answerPos");
	startBtn.onclick = function() {
		startBtn.style.display = "none";
		tipsBtn.style.display = "none";
		answerPos.style.display = "block";
	}
	let tipArray = new Array();
	let number = 0;
	function getTips() {
		let tipsDiv = document.getElementById("tips");
		let tips = tipsDiv.innerText;

		if (tips) {
			tipArray = tips.split("||");

		} else {
			return;
		}
	}

	function alertTip() {
		console.log(tipArray.length);
		if (number < tipArray.length) {
			alert(tipArray[number]);
			number++;

		}
		else {
			alert("已经全部提示完毕了");
		}
	}

	getTips();
	tipsBtn.onclick = alertTip;


	let btnSub = document.getElementById("btn-submit");
	let btnAdd = document.getElementById("btn-addToctj");
	let MathDiv = document.getElementById("MathDiv");
	let solution = document.getElementById("solution");
	let analysis = document.getElementById("analysis");
	btnSub.onclick = function() {
		if (MathDiv.innerText != null) {
			solution.removeAttribute("hidden");
			analysis.removeAttribute("hidden");
			btnAdd.style.display = "initial";
		} else {
			alert("请仔细作答哦");
		}

	}
	let problemId=document.getElementById("problemId");
	btnAdd.onclick = function() {
		let curWwwPath = window.document.location.href;
		let pathName = window.document.location.pathname;
		let pos = curWwwPath.indexOf(pathName);
		let localhostPaht = curWwwPath.substring(0, pos);
		let projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
		let realPath = localhostPaht + projectName;
		window.location.href = "" + realPath + "/user/insert?id="+problemId.innerText;

	}

}