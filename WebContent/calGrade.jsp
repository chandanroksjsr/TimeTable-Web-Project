<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<div class="w3-container w3-card-2 w3-white" id="calc_grade" style="padding-left: 5em;">
	<h3 class="w3-text-grey w3-padding-16" style="color:#303e45!important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>학점
		계산</b>
	</h3>
	<!-- 학점 계산 폼 -->
	<form class="cal_form" action="#" method="POST" id="signup-form"
		style="text-align: left">

		<table style="border-color: black; border-width: 10px">
			<tr>
				<td><input type="text" name="a" placeholder="과목" size="10"></td>
				<td><input type="text" id="x1" placeholder="학점"
					style="width: 120px" /></td>
				<td><select name="cal_1" id="x">

						<option value="0.0">학점선택</option>

						<option value="4.5">A+</option>

						<option value="4.0">A</option>

						<option value="3.5">B+</option>

						<option value="3.0">B</option>

						<option value="2.5">C+</option>

						<option value="2.0">C</option>

						<option value="1.5">D+</option>

						<option value="1.0">D</option>

						<option value="0.0">F</option>

						<option value="0.0">과목없음</option>

				</select></td>
				<td><input type="checkbox" name="sub" value="1"
					style="color: black">전공&nbsp;<br /></td>
			</tr>
			<tr>
				<td><input type="text" name="b" placeholder="과목" size="10">
				</td>
				<td><input type="text" id="y1" placeholder="학점"
					style="width: 120px" /></td>
				<td><select name="cal_2" id="y">

						<option value="0.0">학점선택</option>

						<option value="4.5">A+</option>

						<option value="4.0">A</option>

						<option value="3.5">B+</option>

						<option value="3.0">B</option>

						<option value="2.5">C+</option>

						<option value="2.0">C</option>

						<option value="1.5">D+</option>

						<option value="1.0">D</option>

						<option value="0.0">F</option>

						<option value="0.0">과목없음</option>

				</select></td>
				<td><input type="checkbox" name="sub" value="2">전공&nbsp;<br />
				</td>
			</tr>
			<tr>
				<td><input type="text" name="c" placeholder="과목" size="10">
				</td>
				<td><input type="text" id="c1" placeholder="학점"
					style="width: 120px" /></td>
				<td><select name="cal_3" id="c">

						<option value="0.0">학점선택</option>

						<option value="4.5">A+</option>

						<option value="4.0">A</option>

						<option value="3.5">B+</option>

						<option value="3.0">B</option>

						<option value="2.5">C+</option>

						<option value="2.0">C</option>

						<option value="1.5">D+</option>

						<option value="1.0">D</option>

						<option value="0.0">F</option>

						<option value="0.0">과목없음</option>

				</select></td>
				<td><input type="checkbox" id="subject3" value="1.0">전공&nbsp;<br />
				</td>
			</tr>
			<tr>
				<td><input type="text" name="d" placeholder="과목" size="10">
				</td>
				<td><input type="text" id="d1" placeholder="학점"
					style="width: 120px" /></td>
				<td><select name="cal_4" id="d">

						<option value="0.0">학점선택</option>

						<option value="4.5">A+</option>

						<option value="4.0">A</option>

						<option value="3.5">B+</option>

						<option value="3.0">B</option>

						<option value="2.5">C+</option>

						<option value="2.0">C</option>

						<option value="1.5">D+</option>

						<option value="1.0">D</option>

						<option value="0.0">F</option>

						<option value="0.0">과목없음</option>

				</select></td>
				<td><input type="checkbox" id="subject4" value="1.0">전공&nbsp;<br />
				</td>

			</tr>

			<tr>
				<td><input type="text" name="e" placeholder="과목" size="10"></td>
				<td><input type="text" id="e1" placeholder="학점"
					style="width: 120px" /></td>
				<td><select name="cal_5" id="e">

						<option value="0.0">학점선택</option>

						<option value="4.5">A+</option>

						<option value="4.0">A</option>

						<option value="3.5">B+</option>

						<option value="3.0">B</option>

						<option value="2.5">C+</option>

						<option value="2.0">C</option>

						<option value="1.5">D+</option>

						<option value="1.0">D</option>

						<option value="0.0">F</option>

						<option value="0.0">과목없음</option>

				</select></td>
				<td><input type="checkbox" id="subject5" value="1.0"
					style="color: black">전공&nbsp;<br /></td>
			</tr>
			<tr>
				<td><input type="text" name="f" placeholder="과목" size="10"></td>
				<td><input type="text" id="f1" placeholder="학점"
					style="width: 120px" /></td>
				<td><select name="cal_6" id="f">

						<option value="0.0">학점선택</option>

						<option value="4.5">A+</option>

						<option value="4.0">A</option>

						<option value="3.5">B+</option>

						<option value="3.0">B</option>

						<option value="2.5">C+</option>

						<option value="2.0">C</option>

						<option value="1.5">D+</option>

						<option value="1.0">D</option>

						<option value="0.0">F</option>

						<option value="0.0">과목없음</option>

				</select></td>
				<td><input type="checkbox" id="subject6" value="1.0"
					style="color: black">전공&nbsp;<br /></td>
			</tr>
			<tr>
				<td><input type="text" name="g" placeholder="과목" size="10"></td>
				<td><input type="text" id="g1" placeholder="학점"
					style="width: 120px" /></td>
				<td><select name="cal_7" id="g">

						<option value="0.0">학점선택</option>

						<option value="4.5">A+</option>

						<option value="4.0">A</option>

						<option value="3.5">B+</option>

						<option value="3.0">B</option>

						<option value="2.5">C+</option>

						<option value="2.0">C</option>

						<option value="1.5">D+</option>

						<option value="1.0">D</option>

						<option value="0.0">F</option>

						<option value="0.0">과목없음</option>

				</select></td>
				<td><input type="checkbox" id="subject7" value="1.0"
					style="color: black">전공&nbsp;<br /></td>
			</tr>

			<tr>
				<td><input type="text" name="h" placeholder="과목" size="10"></td>
				<td><input type="text" id="h1" placeholder="학점"
					style="width: 120px" /></td>
				<td><select name="cal_8" id="h">

						<option value="0.0">학점선택</option>

						<option value="4.5">A+</option>

						<option value="4.0">A</option>

						<option value="3.5">B+</option>

						<option value="3.0">B</option>

						<option value="2.5">C+</option>

						<option value="2.0">C</option>

						<option value="1.5">D+</option>

						<option value="1.0">D</option>

						<option value="0.0">F</option>

						<option value="0.0">과목없음</option>

				</select></td>
				<td><input type="checkbox" id="subject8" value="1.0"
					style="color: black">전공&nbsp;</td>
			</tr>
		</table>
	</form>
	<br />
	<input type="button" value="계산하기" onclick="calc()" />
	<br><br><br>

</div>