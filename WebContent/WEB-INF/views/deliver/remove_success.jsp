<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	alert("배송 담당자 정보가 삭제 되었습니다.");
	window.close();
	
	<c:if test="${not empty loginDeliver}" >
		if(window.opener){
			window.opener.location.reload();
		}else{		
			location.href="<%=request.getContextPath()%>/deliver/list.do";
		}
	</c:if>
	
	<c:if test="${empty loginDeliver}" >
		if(window.opener){
			window.opener.location.href="<%=request.getContextPath()%>";
		}else{
			location.href="<%=request.getContextPath()%>";
		}	
	</c:if>	
	
</script>
