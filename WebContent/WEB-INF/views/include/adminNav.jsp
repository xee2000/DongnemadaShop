<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- <div class="btn-group">
  <button type="button" class="btn btn-danger">Action</button>
  <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Separated link</a>
  </div>
</div> -->


<div class="adminNav row">
	<div class="col-12">
		<nav class="navbar navbar-expand navbar-primary navbar-dark">

			<ul class="navbar-nav col-12">
				<li class="col-2"></li>
				<li class="nav-item d-none d-sm-inline-block col-2">
				<a href="#" class="nav-link d-flex justify-content-center">가맹점 관리</a></li>
				<li class="nav-item d-none d-sm-inline-block col-2">
				<a href="<%=request.getContextPath() %>/notice/main.do" class="nav-link d-flex justify-content-center">공지사항 관리</a></li>
				<li class="nav-item d-none d-sm-inline-block col-2">
				<a href="<%=request.getContextPath() %>/qna/main.do" class="nav-link d-flex justify-content-center">QnA 및 1:1 문의 관리</a></li>
				<li class="nav-item d-none d-sm-inline-block col-2">
				<a href="#" class="nav-link d-flex justify-content-center">프로모션 관리</a></li>
				<li class="col-2"></li>
			</ul>

		</nav>
	</div>
</div>
<br />
