<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function changeBtnName(){
	
	var state=0;
	var data=['수정','완료'];
	$('#toggle').click(function(){
		
		state++;
		$(this).html(data[state%2]);
		
		if((state%2)==0){
			$(function(){
	            $('#toggle').click(function(){
	                $('#txtBox').removeAttr('readonly');
	               
	            });
	        });
		}else if((state%2)==1){
			$(function(){
	            $('#toggle').click(function(){
	               $('#txtBox').attr('readonly',false); 
	            });
	        });
		}
	});
	
}

</script>

<h3>전화번호부</h3>

<lable for="name">이름:</lable>
<input id="txtbox" type="text" id="name" name="name" value="${phonebook.name}" readonly>
<br>
<lable for="hp">전화번호:</lable>
<input id="txtbox" type="text" id="hp" name="hp" value="${phonebook.hp}" readonly>
<br>
<lable for="memo">메모:</lable>
<input id="txtbox" type="text" id="memo" name="memo" value="${phonebook.memo}" readonly>
<br>
<!-- <input type="submit" value="전화번호입력"> -->

<input id="toggle" type="button" value="수정" onclick="changeBtnName()" >
<input type="button" value="삭제" onclick="delete()">
