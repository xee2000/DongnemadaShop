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


<div class="deliverNav row">
   <div class="col-12">
      <nav class="navbar navbar-expand navbar-primary navbar-dark">

         <ul class="navbar-nav col-12">
            <li class="col-2"></li>
            <li class="nav-item d-none d-sm-inline-block col-2">
            <a href="<%=request.getContextPath() %>/deliver/detail.do" class="nav-link d-flex justify-content-center">내 정보관리</a></li>
            <li class="nav-item d-none d-sm-inline-block col-2">
            <a href="#" class="nav-link d-flex justify-content-center">배송 이력관리</a></li>
            <li class="nav-item d-none d-sm-inline-block col-2">
            <a href="#" class="nav-link d-flex justify-content-center">공지사항</a></li>
            <li class="nav-item d-none d-sm-inline-block col-2">
            <a href="#" class="nav-link d-flex justify-content-center">고객센터</a></li>
            <li class="col-2"></li>
         </ul>

      </nav>
   </div>
</div>
<br />