<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<div class="w3-container w3-card-2 w3-white" id="calc_grade">
	<h3 class="w3-text-grey w3-padding-16"
		style="color: #303e45 !important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>��õ�ð�ǥ
			����</b>
	</h3>
	<form style="color: #303e45!important;font-size: smaller;">

		<p><b>&nbsp&nbsp&nbsp&nbsp1. ���ϴ� ���������� �����ϼ���</b></p>
		<div class="checks">
            <input type="checkbox" name="day" id="freeday1" onclick="check1();"> <label for="freeday1">��</label>
            <input type="checkbox" name="day" id="freeday2" onclick="check1();"> <label for="freeday2">ȭ</label>
            <input type="checkbox" name="day" id="freeday3" onclick="check1();"> <label for="freeday3">��</label>
            <input type="checkbox" name="day" id="freeday4" onclick="check1();"> <label for="freeday4">��</label>
            <input type="checkbox" name="day" id="freeday5" onclick="check1();"> <label for="freeday5">��</label>
            <input type="checkbox" name="day" id="freeday6" onclick="check1();"> <label for="freeday6">��</label>
            <input type="checkbox" name="none" id="freeday7"  onclick="check();"> <label for="freeday7">�������</label>
        </div>
		<br>

		<p><b>&nbsp&nbsp&nbsp&nbsp2. ���ϴ� ��ϼ��� �����ϼ���</b></p>
		<div class="checks">
            <input type="checkbox" name="times" id="schoolday1" onclick="check2();"> <label for="schoolday1">��1��</label>
            <input type="checkbox" name="times" id="schoolday2" onclick="check2();"> <label for="schoolday2">��2��</label>
            <input type="checkbox" name="times" id="schoolday3" onclick="check2();"> <label for="schoolday3">��3��</label>
            <input type="checkbox" name="times" id="schoolday4" onclick="check2();"> <label for="schoolday4">��4��</label>
            <input type="checkbox" name="times" id="schoolday5" onclick="check2();"> <label for="schoolday5">��5��</label>
            <input type="checkbox" name="times" id="schoolday6" onclick="check2();"> <label for="schoolday6">��6��</label>
            <input type="checkbox" name="times_none" id="schoolday7" onclick="check_none();"> <label for="schoolday7">�������</label>
        </div>
		<br>

		<p><b>&nbsp&nbsp&nbsp&nbsp3. ������� ��õ�� �켱������ �����ּ���</b></p>
		<div class="checks">
            <input type="radio" name="priority" id="gradebase1"> <label for="gradebase1">�о߿켱</label>
            <input type="radio" name="priority" id="gradebase2"> <label for="gradebase2">�����Կ켱</label>
            <input type="radio" name="priority" id="gradebase3"> <label for="gradebase3">�������</label>
        </div>
		<br>

		<p><b>&nbsp&nbsp&nbsp&nbsp4. ��ȣ�ϴ� �������� ������ �Է����ּ���</b></p>
		<div class="checks">
            <input type="radio" name="pro" id="yes"> <label for="yes" style="float: left;">����&nbsp</label>
            <input type="text" id="professorName" placeholder=" ������ ����" style="width: 30%;float: left;margin-top: -0.5em;font-size: smaller;">
            <input type="radio" name="pro" id="no" style="float: left;"> <label for="no">�������</label>
        </div>
		<br>
		<br>
		<center><input type="submit" value="�ð�ǥ ����"/></center>
	</form>

</div>

<script type="text/javascript" src="scripts/jquery-3.1.1.js"></script>
<script type="text/javascript">
        /*����*/
        function check() {
            cbox = input_form.day;
            if (cbox.length) {  // ���� ���� ���
                for (var i = 0; i < cbox.length; i++) {
                    cbox[i].checked = input_form.day.checked;
                    cbox[i].checked = false;

                }
            } else { // �� ���� ���
                cbox.checked = input_form.none.checked;
            }
        }

        function check1() {
            input_form.none.checked = false;
        }

        /*��ϼ�*/
        function check_none() {
            cbox = input_form.times;
            if (cbox.length) {  // ���� ���� ���
                for (var i = 0; i < cbox.length; i++) {
                    cbox[i].checked = input_form.times.checked;
                    cbox[i].checked = false;

                }
            } else { // �� ���� ���
                cbox.checked = input_form.times_none.checked;
            }
        }

        function check2() {
            input_form.times_none.checked = false;
        }
</script>