<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script>
	location.href = "${!empty loginUser ? 'main.do' : 'common/main.do'}";
</script>