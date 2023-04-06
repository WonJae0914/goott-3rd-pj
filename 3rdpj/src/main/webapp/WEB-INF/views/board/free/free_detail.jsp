<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1>��ȸ ������</h1>
	<div class="input_wrap">
		<label>�Խ��� ��ȣ</label>
		<input type="text" name="free_idx" value="${data.free_idx}" id="test4" readonly>
	</div>
	<div class="input_wrap">
		<label>�Խ��� ����</label>
		<input type="text" name="free_title" value="${data.free_title}" >
	</div>
	<div class="input_wrap">
		<label>�Խ��� ����</label>
		<textarea name="free_content">${data.free_content}</textarea>
	</div>
	<div class="input_wrap">
		<label>�Խ��� �����</label>
		<p><fmt:formatDate pattern="yyyy/MM/dd" value="${data.create_date}"/></p>
	</div>
	<button id="modify">�Խñ� ����</button>
	<button id="delete">�Խñ� ����</button>

	<script>
		$(function() {
			$('#modify').click(function() {
				const free_title = document.querySelector('input[name=free_title]').value;
				const free_content = document.querySelector('textarea[name=free_content]').value;
				const free_idx = document.querySelector('input[name=free_idx]').value;

				$.ajax({
					url : '/free/modify',
					data : {"free_idx" : free_idx, "free_title" : free_title, "free_content" : free_content},
					type : 'post',
					dataType : 'text',
					success : function(data) {
						if(data === "�����Ϸ�"){
							alert("�Խñ��� �����Ǿ����ϴ�.")
							location.href = "/free/list"
						}
					}
				})
			})
		})

		$(function() {
			$('#delete').click(function() {
				const free_idx = document.querySelector('input[name=free_idx]').value;

				$.ajax({
					url : '/free/delete',
					data : {"free_idx" : free_idx},
					type : 'post',
					success : function() {
						alert("�Խñ��� �����Ǿ����ϴ�.")
						location.href = "/free/list"
					}

				})
			})
		})
	</script>
</body>
</html>