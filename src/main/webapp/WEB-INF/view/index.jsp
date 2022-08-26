<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
header{height:200px;width:100%;border:1px solid black}

main{display:flex;height:600px;width:100%;border:5px solid red}
aside{overflow: scroll;height:600px;width:20%;border:1px solid orange}
#content{height:600px;width:80%;border:1px solid green}

footer{height:100px;width:100%;border:1px solid black}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function getlist(){
	//$.ajax();->$.ajax({});->$.ajax({url,성공했을 때 함수 구현});
	$.ajax({
		url:"/list",
		success:function(result){$("#list").html(result);}
	});
}

function search(search){
	//$("#content").html(search);
	$.ajax({
		url:"/find?search="+search,
		success:function(result){$("#list").html(result);}
	});
	
}

function insert(){
	var name=document.getElementById("name").value
	var hp=document.getElementById("hp").value
	var memo=document.getElementById("memo").value
	console.log(name);
	console.log(hp);
	console.log(memo);	
	$.ajax({
		url:"/insert",
		type:"post",
		dataType:"text",
		data:{"name":name, "hp":hp, "memo":memo},
		success:function(result){$("#list").html(result);}
	});	
	document.querySelector("#name").value="";
	document.querySelector("#hp").value="";
	document.querySelector("#memo").value="";
}

function getPhonebook(idx){
	console.log(idx);
	$.ajax({
		url:"/findOne?idx="+idx,
		success:function(result){$("#content").html(result);}
	});
}
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

</head>
<body onload="getlist()">
<header>
<h3>전화번호부입력</h3>
<form action="/insertProc" method="post">
<lable for="name">이름:</lable>
<input type="text" id="name" name="name">
<br>
<lable for="hp">전화번호:</lable>
<input type="text" id="hp" name="hp">
<br>
<lable for="memo">메모:</lable>
<input type="text" id="memo" name="memo">
<br>
<!-- <input type="submit" value="전화번호입력"> -->
</form>
<input type="button" value="전화번호입력" onclick="insert()">
</header>

<main>
<aside>
<div id="search">검색<input type="text" name="search" onkeyup="search(this.value)"></div>
<div id="list">전체리스트 or 검색리스트 결과</div>
</aside>
<div id="content">컨텐츠</div>
</main>
<footer></footer>
</body>
</html>