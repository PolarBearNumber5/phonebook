<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<<script type="text/javascript">
function update(){
	$(document).ready(function(){
		  $("#update").click(function(){
		    $("수정").toggle();
		  });
		});
}
</script>




<h3>전화번호부</h3>

<lable for="name">이름:</lable>
<input type="text" id="name" name="name" value="${phonebook.name}" readonly>
<br>
<lable for="hp">전화번호:</lable>
<input type="text" id="hp" name="hp" value="${phonebook.hp}" readonly>
<br>
<lable for="memo">메모:</lable>
<input type="text" id="memo" name="memo" value="${phonebook.memo}" readonly>
<br>
<!-- <input type="submit" value="전화번호입력"> -->

<input id="update" type="button" value="수정" onclick="update()">
<input id="" type="button" value="삭제" onclick="delete()">
