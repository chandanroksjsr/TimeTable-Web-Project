<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<div class="w3-container w3-card-2 w3-white" id="calc_grade">
	<h3 class="w3-text-grey w3-padding-16"
		style="color: #303e45 !important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>추천시간표
			생성</b>
	</h3>
	<form style="color: #303e45!important;font-size: smaller;">

		<p><b>&nbsp&nbsp&nbsp&nbsp1. 원하는 공강요일을 선택하세요</b></p>
		<div class="checks">
            <input type="checkbox" name="day" id="freeday1" onclick="check1();"> <label for="freeday1">월</label>
            <input type="checkbox" name="day" id="freeday2" onclick="check1();"> <label for="freeday2">화</label>
            <input type="checkbox" name="day" id="freeday3" onclick="check1();"> <label for="freeday3">수</label>
            <input type="checkbox" name="day" id="freeday4" onclick="check1();"> <label for="freeday4">목</label>
            <input type="checkbox" name="day" id="freeday5" onclick="check1();"> <label for="freeday5">금</label>
            <input type="checkbox" name="day" id="freeday6" onclick="check1();"> <label for="freeday6">토</label>
            <input type="checkbox" name="none" id="freeday7"  onclick="check();"> <label for="freeday7">상관없음</label>
        </div>
		<br>

		<p><b>&nbsp&nbsp&nbsp&nbsp2. 원하는 등교일수를 선택하세요</b></p>
		<div class="checks">
            <input type="checkbox" name="times" id="schoolday1" onclick="check2();"> <label for="schoolday1">주1일</label>
            <input type="checkbox" name="times" id="schoolday2" onclick="check2();"> <label for="schoolday2">주2일</label>
            <input type="checkbox" name="times" id="schoolday3" onclick="check2();"> <label for="schoolday3">주3일</label>
            <input type="checkbox" name="times" id="schoolday4" onclick="check2();"> <label for="schoolday4">주4일</label>
            <input type="checkbox" name="times" id="schoolday5" onclick="check2();"> <label for="schoolday5">주5일</label>
            <input type="checkbox" name="times" id="schoolday6" onclick="check2();"> <label for="schoolday6">주6일</label>
            <input type="checkbox" name="times_none" id="schoolday7" onclick="check_none();"> <label for="schoolday7">상관없음</label>
        </div>
		<br>

		<p><b>&nbsp&nbsp&nbsp&nbsp3. 성적기반 추천시 우선순위를 정해주세요</b></p>
		<div class="checks">
            <input type="radio" name="priority" id="gradebase1"> <label for="gradebase1">분야우선</label>
            <input type="radio" name="priority" id="gradebase2"> <label for="gradebase2">교수님우선</label>
            <input type="radio" name="priority" id="gradebase3"> <label for="gradebase3">상관없음</label>
        </div>
		<br>

		<p><b>&nbsp&nbsp&nbsp&nbsp4. 선호하는 교수님의 성함을 입력해주세요</b></p>
		<div class="checks">
            <input type="radio" name="pro" id="yes"> <label for="yes" style="float: left;">있음&nbsp</label>
            <input type="text" id="professorName" placeholder=" 교수님 성함" style="width: 30%;float: left;margin-top: -0.5em;font-size: smaller;">
            <input type="radio" name="pro" id="no" style="float: left;"> <label for="no">상관없음</label>
        </div>
		<br>
		<br>
		<center><input type="submit" value="시간표 생성"/></center>
	</form>

</div>

<script type="text/javascript" src="scripts/jquery-3.1.1.js"></script>
<script type="text/javascript">
        /*요일*/
        function check() {
            cbox = input_form.day;
            if (cbox.length) {  // 여러 개일 경우
                for (var i = 0; i < cbox.length; i++) {
                    cbox[i].checked = input_form.day.checked;
                    cbox[i].checked = false;

                }
            } else { // 한 개일 경우
                cbox.checked = input_form.none.checked;
            }
        }

        function check1() {
            input_form.none.checked = false;
        }

        /*등교일수*/
        function check_none() {
            cbox = input_form.times;
            if (cbox.length) {  // 여러 개일 경우
                for (var i = 0; i < cbox.length; i++) {
                    cbox[i].checked = input_form.times.checked;
                    cbox[i].checked = false;

                }
            } else { // 한 개일 경우
                cbox.checked = input_form.times_none.checked;
            }
        }

        function check2() {
            input_form.times_none.checked = false;
        }
</script>