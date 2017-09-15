<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="w3-container w3-card-2 w3-white w3-margin-bottom" id="#" >
	<h3 class="w3-text-grey w3-padding-16" style="color:#303e45!important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>시간표 만들기</b>
	</h3>
	<br />

        <div style="padding-left: 1em; height:500px; overflow-y:scroll;">
            <table id="table_form" style="border-color: black; border-width: 10px; width:97% ;">
                <thead>
                    <tr style="">
                        <th style="border:none; background-color:white;"></th>
                        <td>월</td>
                        <td>화</td>
                        <td>수</td>
                        <td>목</td>
                        <td>금</td>
                        <td>토</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>0교시</th>
                        <td id="mon0"></td>
                        <td id="tue0"></td>
                        <td id="wend0"></td>
                        <td id="thur0"></td>
                        <td id="fri0"></td>
                        <td id="sat0"></td>
                    </tr>
                    <tr>
                        <th>1교시</th>
                        <td id="mon1"></td>
                        <td id="tue1"></td>
                        <td id="wend1"></td>
                        <td id="thur1"></td>
                        <td id="fri1"></td>
                        <td id="sat1"></td>
                    </tr>
                    <tr>
                        <th>2교시</th>
                        <td id="mon2"></td>
                        <td id="tue2"></td>
                        <td id="wend2"></td>
                        <td id="thur2"></td>
                        <td id="fri2"></td>
                        <td id="sat2"></td>
                    </tr>
                    <tr>
                        <th>3교시</th>
                        <td id="mon3"></td>
                        <td id="tue3"></td>
                        <td id="wend3"></td>
                        <td id="thur3"></td>
                        <td id="fri3"></td>
                        <td id="sat3"></td>
                    </tr>
                    <tr>
                        <th>4교시</th>
                        <td id="mon4"></td>
                        <td id="tue4"></td>
                        <td id="wend4"></td>
                        <td id="thur4"></td>
                        <td id="fri4"></td>
                        <td id="sat4"></td>
                    </tr>
                    <tr>
                        <th>5교시</th>
                        <td id="mon5"></td>
                        <td id="tue5"></td>
                        <td id="wend5"></td>
                        <td id="thur5"></td>
                        <td id="fri5"></td>
                        <td id="sat5"></td>
                    </tr>
                    <tr>
                        <th>6교시</th>
                        <td id="mon6"></td>
                        <td id="tue6"></td>
                        <td id="wend6"></td>
                        <td id="thur6"></td>
                        <td id="fri6"></td>
                        <td id="sat6"></td>
                    </tr>
                    <tr>
                        <th>7교시</th>
                        <td id="mon7"></td>
                        <td id="tue7"></td>
                        <td id="wend7"></td>
                        <td id="thur7"></td>
                        <td id="fri7"></td>
                        <td id="sat7"></td>
                    </tr>
                    <tr>
                        <th>8교시</th>
                        <td id="mon8"></td>
                        <td id="tue8"></td>
                        <td id="wend8"></td>
                        <td id="thur8"></td>
                        <td id="fri8"></td>
                        <td id="sat8"></td>
                    </tr>
                    <tr>
                        <th>9교시</th>
                        <td id="mon9"></td>
                        <td id="tue9"></td>
                        <td id="wend9"></td>
                        <td id="thur9"></td>
                        <td id="fri9"></td>
                        <td id="sat9"></td>
                    </tr>
                    <tr>
                        <th>10교시</th>
                        <td id="mon10"></td>
                        <td id="tue10"></td>
                        <td id="wend10"></td>
                        <td id="thur10"></td>
                        <td id="fri10"></td>
                        <td id="sat10"></td>
                    </tr>
                    <tr>
                        <th>11교시</th>
                        <td id="mon11"></td>
                        <td id="tue11"></td>
                        <td id="wend11"></td>
                        <td id="thur11"></td>
                        <td id="fri11"></td>
                        <td id="sat11"></td>
                    </tr>
                    <tr>
                        <th>12교시</th>
                        <td id="mon12"></td>
                        <td id="tue12"></td>
                        <td id="wend12"></td>
                        <td id="thur12"></td>
                        <td id="fri12"></td>
                        <td id="sat12"></td>
                    </tr>
                    <tr>
                        <th>13교시</th>
                        <td id="mon13"></td>
                        <td id="tue13"></td>
                        <td id="wend13"></td>
                        <td id="thur13"></td>
                        <td id="fri13"></td>
                        <td id="sat13"></td>
                    </tr>
                    <tr>
                        <th>14교시</th>
                        <td id="mon14"></td>
                        <td id="tue14"></td>
                        <td id="wend14"></td>
                        <td id="thur14"></td>
                        <td id="fri14"></td>
                        <td id="sat14"></td>
                    </tr>
                </tbody>

            </table>
        </div>


        <div style="height: 10px; background-color:rgba(0, 150, 136, 0.2)">
        </div>
        <br />


            <div style="width:25%;  float:left;">
                <select id="col" style="width:100%;font-size: small;">

                    <option value="gyopil">교필</option>

                    <option value="gyosun">교선</option>

                    <option value="ilsun">일선</option>

                    <option value="hss">인문사회과학대학</option>

                    <option value="tc">사범대학</option>

                    <option value="ac">경영대학</option>

                    <option value="artc">예술문화사업대학</option>

                    <option value="ns">자연과학대학</option>

                    <option value="ict">미래융합공학대학</option>

                </select>

                <center><button onclick="viewCol()" style="margin-bottom:3em;font-size: small;padding-left: 2em;padding-right: 2em;margin-top: 1em;">선택</button></center>
            </div>

            <div style="text-align: center;float:left; width:73%;max-height: 300px;overflow:scroll; white-space:nowrap;margin-left: 10px;font-size: 13px;">
                <table>
                    <thead>
                        <tr>
                            <th></th>
                            <td><b>학년</b></td>
                            <td><b>이수구분</b></td>
                            <td><b>학수번호</b></td>
                            <td><b>학과명</b></td>
                            <td><b>교과목명</b></td>
                            <td><b>학점</b></td>
                            <td><b>시간</b></td>
                            <td><b>분반</b></td>
                            <td><b>담당교수</b></td>
                            <td><b>강의시간</b></td>
                            <td><b>강의실</b></td>
                            <td><b>영역구분</b></td>
                            <td><b>비고</b></td>
                        </tr>
                    </thead>
                    <tbody id="table_aj">
                    </tbody>
                </table>
            </div>
        <div style="float:left; width:100%;">
            <center style="margin-bottom:3em;margin-top:1em;">
	            <button>저장</button>
				<button onclick="moveR()">추천시간표 생성</button>
			</center>
         </div>
</div>

<script type="text/javascript" src="scripts/jquery-3.1.1.js"></script>
<script type="text/javascript">
function moveR(){
	$.ajax({
		url : "selectR.jsp",
		data : {msg: "re"},
		method : "post",
		dataType : "html",
		success : function(result){
			$("#pageList").html(result);
		}
	});
}

function viewCol(){
	var val = document.getElementById('col').value;
	if(val == 'gyopil'){npage='gyopil.jsp';}
	else if(val == 'gyosun'){npage='gyosun.jsp';}
	else if(val == 'ilsun'){npage='ilsun.jsp';}
	else if(val == 'hss'){npage='major.jsp'}
	else if(val == 'tc'){npage='tc.jsp'}
	else if(val == 'ac'){npage='ac.jsp'}
	else if(val == 'artc'){npage='artc.jsp'}
	else if(val == 'ns'){npage='ns.jsp'}
	else if(val == 'ict'){npage='ict.jsp'}
	$.ajax({
		url : npage,
		data : {msg: val},
		method : "post",
		dataType : "html",
		success : function(result){
			$("#table_aj").html(result);
		}
	});
}
function upload(v,v2,v3,v4){
	var colors= ["#4b23ff","#c806d6","#05910a","#15bcd6","#ff8726","#ff401e","#184063","#009688"];
	var colorIndex = Math.floor(Math.random() * colors.length);
	var lec ="";
	var day="";
	var time="";
	var wday="";
	var result="";
	var split = v.split("/");
	for(i=0;i<split.length;i++){
		lec=split[i].split(",");
		day=lec[0].split("")[0];
		if(day == '월'){
			wday='mon';
		}else if(day == '화'){
			wday='tue';
		}else if(day == '수'){
			wday='wend';
		}else if(day == '목'){
			wday='thur';
		}else if(day == '금'){
			wday='fri';
		}else if(day == '토'){
			wday='sat';
		}
		for(j=0;j<lec.length;j++){
			if(j==0){
				time=lec[j].substring(1,lec[j].length);
			}
			else{
				time = lec[j];
			}
			result=wday+time;
			document.getElementById(result).setAttribute('style','border-color:'+colors[colorIndex]+';border-style: double;font-size:small');
			document.getElementById(result).innerHTML="<p><b>"+v2+"</b></p><p style='font-size: smaller;'>"+v3+"/"+v4+"</p>";
		}
	}
}
</script>



