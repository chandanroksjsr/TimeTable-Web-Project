<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="w3-container w3-card-2 w3-white w3-margin-bottom" id="#"
	style="padding-left: 5em;padding-bottom: 5em;">
	<h3 class="w3-text-grey w3-padding-16"
		style="color: #303e45 !important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>ȸ����������</b>
	</h3>
	<p style="color: #303e45 !important">���� ������ ���� �Ʒ� ����� �ۼ����ּ���.</p>
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
							<li><input type="text" name="univ" value="�����б�" readonly /></li>
						</ul>
						<ul>
							<li><select name="college"
									onchange="changeList(this.value);">
									<option value="">�ҼӴ���</option>
									<option value="�̷����հ��д���">�̷����հ��д���</option>
									<option value="�ڿ����д���">�ڿ����д���</option>
									<option value="������ȭ�������">������ȭ�������</option>
									<option value="�濵����">�濵����</option>
									<option value="�������">�������</option>
									<option value="�ι���ȸ���д���">�ι���ȸ���д���</option>
								</select> </li>
						</ul>
						<ul>
							<li>
								<select name="major" id="m">
									<option value="">����</option>
								</select>
							</li>
						</ul>
						<ul>
							<li><input type="text" name="num" value="${sessionScope.currentCustomer.num}" readonly /></li>
						</ul>
						<ul>
							<li>
								<select name="grade" >
									<option value="">�г�</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
							</li>
						</ul>
						<ul>
							<li><input type="button" class="special" value="ȸ�� ���� ����" onclick="check()" id="update"/></li>
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
			num = new Array("����");
			vnum = new Array("");
		} else if (col == "�̷����հ��д���") {
			num = new Array("�����������к�", "�޸������������а�", "����������ǻ���к�", "������а�",
					"��ǻ�Ͱ��а�", "��ǻ�Ͱ�����ǻ�Ͱ�������", "����ȭ�а��к�", "������а�", "ȭ�п��������а�",
					"ȭ���ż����а�", "�����а�", "�̵�����Ʈ�����а�");
			vnum = new Array("�����������к�", "�޸������������а�", "����������ǻ���к�", "������а�",
					"��ǻ�Ͱ��а�", "��ǻ�Ͱ�����ǻ�Ͱ�������", "����ȭ�а��к�", "������а�", "ȭ�п��������а�",
					"ȭ���ż����а�", "�����а�", "�̵�����Ʈ�����а�");
		} else if (col == "�ڿ����д���") {
			num = new Array("ȭ�а�", "������а�", "�Һ����ְ��а�", "�ܽĿ����а�", "�Ƿ��а�");
			vnum = new Array("ȭ�а�", "������а�", "�Һ����ְ��а�", "�ܽĿ����а�", "�Ƿ��а�");
		} else if (col == "������ȭ�������") {
			num = new Array("�ܽĿ����Ƿ��к�", "�ܽĿ����а�", "�Ƿ��а�", "�����������к�",
					"�������ǰ������а�", "���뿹���а�", "���������а�", "���������а��ѱ�ȭ����",
					"���������а�����ȭ����", "���������а���������", "��Ȱ�����а�", "��Ȱ�����а�������������",
					"��Ȱ�����а��ؽ�Ÿ�Ͼ�Ʈ����", "�����к�", "�ǾƳ��", "���ǰ�", "���̵���۰��", "�����ǰ�");
			vnum = new Array("�ܽĿ����Ƿ��к�", "�ܽĿ����а�", "�Ƿ��а�", "�����������к�",
					"�������ǰ������а�", "���뿹���а�", "���������а�", "���������а��ѱ�ȭ����",
					"���������а�����ȭ����", "���������а���������", "��Ȱ�����а�", "��Ȱ�����а�������������",
					"��Ȱ�����а��ؽ�Ÿ�Ͼ�Ʈ����", "�����к�", "�ǾƳ��", "���ǰ�", "���̵���۰��", "�����ǰ�");
		} else if (col == "�濵����") {
			num = new Array("���������к�", "�濵�к�", "�۷ι��濵�а�", "�濵�а�");
			vnum = new Array("���������к�", "�濵�к�", "�۷ι��濵�а�", "�濵�а�");
		} else if (col == "�������") {
			num = new Array("�������", "�������", "�����а�", "���б�����", "�Ҿ����", "�Ͼ����");
			vnum = new Array("�������", "�������", "�����а�", "���б�����", "�Ҿ����",
					"�Ͼ����");
		} else if (col == "�ι���ȸ���д���") {
			num = new Array("�ι��������к�", "�����������а�", "���������а�", "���������а�",
					"���Ϲ�ȭ�������а�", "����ȯ���к�", "���������к�", "���������а�", "�����Ⱥ��а�",
					"�����а�", "���а�", "�����а�");
			vnum = new Array("�ι��������к�", "�����������а�", "���������а�", "���������а�",
					"���Ϲ�ȭ�������а�", "����ȯ���к�", "���������к�", "���������а�", "�����Ⱥ��а�",
					"�����а�", "���а�", "�����а�");
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
		if(pw==""){alert("�н����带 �Է��ϼ���.");document.form1.pw.focus();return;}
		if(college==""){alert("�ҼӴ����� �����ϼ���.");document.form1.college.focus();return;}
		if(major==""){alert("������ �����ϼ���.");document.form1.major.focus();return;}
		if(grade==""){alert("�г��� �����ϼ���.");document.form1.grade.focus();return;}
		if(pw !="" & college !="" & major !="" & grade !=""){
			alert("������ �Ϸ�Ǿ����ϴ�.");
			document.getElementById("update").setAttribute('type','submit');
		}
	}
</script>