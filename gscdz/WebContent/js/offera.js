/**
 *          <div id="subject" contenteditable="true" class="inputdiv"></div>
            <div id="solution" contenteditable="true" class="inputdiv"></div>
            <div id="knowledgePoints" contenteditable="true" class="inputdiv"></div>
            <div id="analysis" contenteditable="true" class="inputdiv"></div>
            <div id="tips" contenteditable="true" class="inputdiv"></div>
 */
window.onload=function(){
	let inputDivs=document.getElementsByClassName("inputdiv");
let subBtn=document.getElementById("sub-btn");
        subBtn.onclick=function(){
	       for(let i=0;i<inputDivs.length;++i){
               console.log(inputDivs[i].innerText);
               if(inputDivs[i].innerText==""){
                   alert("有内容为空哦");
                   return;
               }
           }
           let curWwwPath=window.document.location.href;
           let pathName=window.document.location.pathname;
           let pos=curWwwPath.indexOf(pathName);
           let localhostPaht=curWwwPath.substring(0,pos);
           let projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
           let realPath=localhostPaht+projectName;
           window.location.href=""+realPath+"/user/offerSolvedProblem?subject='"+inputDivs[0].innerText+"'&solution='"+inputDivs[1].innerText+"'&knowledgePoints='"+inputDivs[2].innerText+"'&analysis='"+inputDivs[3].innerText+"'&tips='"+inputDivs[4].innerText+"'";
       }
}
