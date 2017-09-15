<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="w3-container w3-card-2 w3-white w3-margin-bottom" id="#" >
	<h3 class="w3-text-grey w3-padding-16" style="color:#303e45!important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>�ð�ǥ �����</b>
	</h3>
	<br />

        <div style="padding-left: 1em; height:500px; overflow-y:scroll;">
            <table id="table_form" style="border-color: black; border-width: 10px; width:97% ;">
                <thead>
                    <tr style="">
                        <th style="border:none; background-color:white;"></th>
                        <td>��</td>
                        <td>ȭ</td>
                        <td>��</td>
                        <td>��</td>
                        <td>��</td>
                        <td>��</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>0����</th>
                        <td id="mon0"></td>
                        <td id="tue0"></td>
                        <td id="wend0"></td>
                        <td id="thur0"></td>
                        <td id="fri0"></td>
                        <td id="sat0"></td>
                    </tr>
                    <tr>
                        <th>1����</th>
                        <td id="mon1"></td>
                        <td id="tue1"></td>
                        <td id="wend1"></td>
                        <td id="thur1"></td>
                        <td id="fri1"></td>
                        <td id="sat1"></td>
                    </tr>
                    <tr>
                        <th>2����</th>
                        <td id="mon2"></td>
                        <td id="tue2"></td>
                        <td id="wend2"></td>
                        <td id="thur2"></td>
                        <td id="fri2"></td>
                        <td id="sat2"></td>
                    </tr>
                    <tr>
                        <th>3����</th>
                        <td id="mon3"></td>
                        <td id="tue3"></td>
                        <td id="wend3"></td>
                        <td id="thur3"></td>
                        <td id="fri3"></td>
                        <td id="sat3"></td>
                    </tr>
                    <tr>
                        <th>4����</th>
                        <td id="mon4"></td>
                        <td id="tue4"></td>
                        <td id="wend4"></td>
                        <td id="thur4"></td>
                        <td id="fri4"></td>
                        <td id="sat4"></td>
                    </tr>
                    <tr>
                        <th>5����</th>
                        <td id="mon5"></td>
                        <td id="tue5"></td>
                        <td id="wend5"></td>
                        <td id="thur5"></td>
                        <td id="fri5"></td>
                        <td id="sat5"></td>
                    </tr>
                    <tr>
                        <th>6����</th>
                        <td id="mon6"></td>
                        <td id="tue6"></td>
                        <td id="wend6"></td>
                        <td id="thur6"></td>
                        <td id="fri6"></td>
                        <td id="sat6"></td>
                    </tr>
                    <tr>
                        <th>7����</th>
                        <td id="mon7"></td>
                        <td id="tue7"></td>
                        <td id="wend7"></td>
                        <td id="thur7"></td>
                        <td id="fri7"></td>
                        <td id="sat7"></td>
                    </tr>
                    <tr>
                        <th>8����</th>
                        <td id="mon8"></td>
                        <td id="tue8"></td>
                        <td id="wend8"></td>
                        <td id="thur8"></td>
                        <td id="fri8"></td>
                        <td id="sat8"></td>
                    </tr>
                    <tr>
                        <th>9����</th>
                        <td id="mon9"></td>
                        <td id="tue9"></td>
                        <td id="wend9"></td>
                        <td id="thur9"></td>
                        <td id="fri9"></td>
                        <td id="sat9"></td>
                    </tr>
                    <tr>
                        <th>10����</th>
                        <td id="mon10"></td>
                        <td id="tue10"></td>
                        <td id="wend10"></td>
                        <td id="thur10"></td>
                        <td id="fri10"></td>
                        <td id="sat10"></td>
                    </tr>
                    <tr>
                        <th>11����</th>
                        <td id="mon11"></td>
                        <td id="tue11"></td>
                        <td id="wend11"></td>
                        <td id="thur11"></td>
                        <td id="fri11"></td>
                        <td id="sat11"></td>
                    </tr>
                    <tr>
                        <th>12����</th>
                        <td id="mon12"></td>
                        <td id="tue12"></td>
                        <td id="wend12"></td>
                        <td id="thur12"></td>
                        <td id="fri12"></td>
                        <td id="sat12"></td>
                    </tr>
                    <tr>
                        <th>13����</th>
                        <td id="mon13"></td>
                        <td id="tue13"></td>
                        <td id="wend13"></td>
                        <td id="thur13"></td>
                        <td id="fri13"></td>
                        <td id="sat13"></td>
                    </tr>
                    <tr>
                        <th>14����</th>
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

                    <option value="gyopil">����</option>

                    <option value="gyosun">����</option>

                    <option value="ilsun">�ϼ�</option>

                    <option value="hss">�ι���ȸ���д���</option>

                    <option value="tc">�������</option>

                    <option value="ac">�濵����</option>

                    <option value="artc">������ȭ�������</option>

                    <option value="ns">�ڿ����д���</option>

                    <option value="ict">�̷����հ��д���</option>

                </select>

                <center><button onclick="viewCol()" style="margin-bottom:3em;font-size: small;padding-left: 2em;padding-right: 2em;margin-top: 1em;">����</button></center>
            </div>

            <div style="text-align: center;float:left; width:73%;max-height: 300px;overflow:scroll; white-space:nowrap;margin-left: 10px;font-size: 13px;">
                <table>
                    <thead>
                        <tr>
                            <th></th>
                            <td><b>�г�</b></td>
                            <td><b>�̼�����</b></td>
                            <td><b>�м���ȣ</b></td>
                            <td><b>�а���</b></td>
                            <td><b>�������</b></td>
                            <td><b>����</b></td>
                            <td><b>�ð�</b></td>
                            <td><b>�й�</b></td>
                            <td><b>��米��</b></td>
                            <td><b>���ǽð�</b></td>
                            <td><b>���ǽ�</b></td>
                            <td><b>��������</b></td>
                            <td><b>���</b></td>
                        </tr>
                    </thead>
                    <tbody id="table_aj">
                    </tbody>
                </table>
            </div>
        <div style="float:left; width:100%;">
            <center style="margin-bottom:3em;margin-top:1em;">
	            <button>����</button>
				<button onclick="moveR()">��õ�ð�ǥ ����</button>
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
		if(day == '��'){
			wday='mon';
		}else if(day == 'ȭ'){
			wday='tue';
		}else if(day == '��'){
			wday='wend';
		}else if(day == '��'){
			wday='thur';
		}else if(day == '��'){
			wday='fri';
		}else if(day == '��'){
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



