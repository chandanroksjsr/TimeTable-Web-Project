<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="w3-container w3-card-2 w3-white w3-margin-bottom" id="#"
	style="padding-left: 5em;padding-bottom: 5em;">
	<h3 class="w3-text-grey w3-padding-16"
		style="color: #303e45 !important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>회원정보수정</b>
	</h3>
	<p style="color: #303e45 !important">정보 수정을 위해 아래 양식을 작성해주세요.</p>
	<article id="main">
		<!-- One -->
		<section class="wrapper style4 special container 75%"
			style="margin: auto;">

			<!-- Content -->
			<div class="content" id="updateInfo">
				<form action="UserController?command=updateUser" method="post"
					name="form1">
						<ul>
							<li><input type="text" name="id" value="${sessionScope.currentCustomer.id}" readonly /></li>
							<li><input type="text" name="name" value="${sessionScope.currentCustomer.name}" readonly/></li>
						</ul>
						<ul>
							<li><input type="password" name="pw" placeholder="Password"/></li>
							<li><input type="text" name="univ" value="상명대학교" readonly /></li>
						</ul>
						<ul>
							<li><select name="college"
									onchange="changeList(this.value);">
									<option value="">소속대학</option>
									<option value="미래융합공학대학">미래융합공학대학</option>
									<option value="자연과학대학">자연과학대학</option>
									<option value="예술문화산업대학">예술문화산업대학</option>
									<option value="경영대학">경영대학</option>
									<option value="사범대학">사범대학</option>
									<option value="인문사회과학대학">인문사회과학대학</option>
								</select> </li>
						</ul>
						<ul>
							<li>
								<select name="major" id="m">
									<option value="">전공</option>
								</select>
							</li>
						</ul>
						<ul>
							<li><input type="text" name="num" value="${sessionScope.currentCustomer.num}" readonly /></li>
						</ul>
						<ul>
							<li>
								<select name="grade" >
									<option value="">학년</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
							</li>
						</ul>
						<ul>
							<li><input type="button" class="special" value="회원 정보 수정" onclick="check()" id="update"/></li>
			  			</ul>
				</form>
			</div>

		</section>
	</article>
</div>

<script type="text/javascript" src="scripts/jquery-3.1.1.js"></script>
<script type="text/javascript">
	function changeList(col) {
		var f = document.form1;
		var opt = $("#m option").length;

		if (col == "") {
			num = new Array("전공");
			vnum = new Array("");
		} else if (col == "미래융합공학대학") {
			num = new Array("지능정보공학부", "휴먼지능정보공학과", "전기전자컴퓨터학부", "전기공학과",
					"컴퓨터공학과", "컴퓨터과학컴퓨터과학전공", "생명화학공학부", "생명공학과", "화학에너지공학과",
					"화공신소재학과", "게임학과", "미디어소프트웨어학과");
			vnum = new Array("지능정보공학부", "휴먼지능정보공학과", "전기전자컴퓨터학부", "전기공학과",
					"컴퓨터공학과", "컴퓨터과학컴퓨터과학전공", "생명화학공학부", "생명공학과", "화학에너지공학과",
					"화공신소재학과", "게임학과", "미디어소프트웨어학과");
		} else if (col == "자연과학대학") {
			num = new Array("화학과", "생명과학과", "소비자주거학과", "외식영양학과", "의류학과");
			vnum = new Array("화학과", "생명과학과", "소비자주거학과", "외식영양학과", "의류학과");
		} else if (col == "예술문화산업대학") {
			num = new Array("외식영양의류학부", "외식영양학과", "의류학과", "스포츠무용학부",
					"스포츠건강관리학과", "무용예술학과", "조형예술학과", "조형예술학과한국화전공",
					"조형예술학과서양화전공", "조형예술학과조소전공", "생활예술학과", "생활예술학과가구조형전공",
					"생활예술학과텍스타일아트전공", "음악학부", "피아노과", "성악과", "뉴미디어작곡과", "관현악과");
			vnum = new Array("외식영양의류학부", "외식영양학과", "의류학과", "스포츠무용학부",
					"스포츠건강관리학과", "무용예술학과", "조형예술학과", "조형예술학과한국화전공",
					"조형예술학과서양화전공", "조형예술학과조소전공", "생활예술학과", "생활예술학과가구조형전공",
					"생활예술학과텍스타일아트전공", "음악학부", "피아노과", "성악과", "뉴미디어작곡과", "관현악과");
		} else if (col == "경영대학") {
			num = new Array("경제금융학부", "경영학부", "글로벌경영학과", "경영학과");
			vnum = new Array("경제금융학부", "경영학부", "글로벌경영학과", "경영학과");
		} else if (col == "사범대학") {
			num = new Array("국어교육과", "영어교육과", "교육학과", "수학교육과", "불어교육과", "일어교육과");
			vnum = new Array("국어교육과", "영어교육과", "교육학과", "수학교육과", "불어교육과",
					"일어교육과");
		} else if (col == "인문사회과학대학") {
			num = new Array("인문콘텐츠학부", "역사콘텐츠학과", "지적재산권학과", "문헌정보학과",
					"한일문화콘텐츠학과", "공간환경학부", "공공인재학부", "가족복지학과", "국가안보학과",
					"지리학과", "법학과", "행정학과");
			vnum = new Array("인문콘텐츠학부", "역사콘텐츠학과", "지적재산권학과", "문헌정보학과",
					"한일문화콘텐츠학과", "공간환경학부", "공공인재학부", "가족복지학과", "국가안보학과",
					"지리학과", "법학과", "행정학과");
		}

		for (var i = 0; i < opt; i++) {
			f.major.options[0] = null;
		}
		for (var k = 0; k < num.length; k++) {
			f.major.options[k] = new Option(num[k], vnum[k]);
		}
	}
	
	function check(){
		var pw = document.form1.pw.value;
		var college = document.form1.college.value;
		var major = document.form1.major.value;
		var grade = document.form1.grade.value;
		if(pw==""){alert("패스워드를 입력하세요.");document.form1.pw.focus();return;}
		if(college==""){alert("소속대학을 선택하세요.");document.form1.college.focus();return;}
		if(major==""){alert("전공을 선택하세요.");document.form1.major.focus();return;}
		if(grade==""){alert("학년을 선택하세요.");document.form1.grade.focus();return;}
		if(pw !="" & college !="" & major !="" & grade !=""){
			alert("수정이 완료되었습니다.");
			document.getElementById("update").setAttribute('type','submit');
		}
	}
</script>