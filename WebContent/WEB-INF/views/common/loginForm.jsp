<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>



<body>

	<br>
	<br>
	<!-- Header Section End -->
	<div class="row">
		<div class="login-logo col-3"></div>
		<div class="col-6">
			<div class="card card-primary card-tabs">
				<div class="card-header p-0 pt-1">
					<ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							id="custom-tabs-one-home-tab" data-toggle="pill"
							href="#custom-tabs-one-home" role="tab"
							aria-controls="custom-tabs-one-home" aria-selected="true">소비자</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							id="custom-tabs-one-profile-tab" data-toggle="pill"
							href="#custom-tabs-one-profile" role="tab"
							aria-controls="custom-tabs-one-profile" aria-selected="false">가맹점</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							id="custom-tabs-one-messages-tab" data-toggle="pill"
							href="#custom-tabs-one-messages" role="tab"
							aria-controls="custom-tabs-one-messages" aria-selected="false">관리자</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							id="custom-tabs-one-settings-tab" data-toggle="pill"
							href="#custom-tabs-one-settings" role="tab"
							aria-controls="custom-tabs-one-settings" aria-selected="false">배송기사</a>
						</li>
					</ul>
				</div>
				<div class="card-body">
					<div class="tab-content" id="custom-tabs-one-tabContent">
						<div class="tab-pane fade active show" id="custom-tabs-one-home"
							role="tabpanel" aria-labelledby="custom-tabs-one-home-tab">
							<div class="login-box">
								<div class="card">
									<div class="card-body login-card-body">
										<p class="login-box-msg">로그인 페이지</p>
										<form action="<%=request.getContextPath()%>/member/login.do" method="post">
											<div class="input-group mb-3">
												<input type="text" class="form-control" placeholder="아이디를 입력해주세요"
													name="member_id">
												<div class="input-group-append">
													<div class="input-group-text"></div>
												</div>
											</div>
											<div class="input-group mb-3">
												<input type="password" class="form-control" name="member_pw"
													placeholder="비밀번호를 입력해주세요">
												<div class="input-group-append">
													<div class="input-group-text"></div>
												</div>
											</div>
											<div class="row">
												<div class="col-12">
													<button type="submit" class="btn btn-primary float-right">로그인</button>
												</div>

											</div>
										</form>
										<p class="mb-1">
											<a href="forgot-password.html">아이디 찾기</a>
										</p>
										<p class="mb-0">
											<a href="register.html" class="text-center">패스워드 찾기</a>
										</p>
									</div>

								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="custom-tabs-one-profile"
							role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab">
							<div class="login-box">


								<div class="card">
									<div class="card-body login-card-body">
										<p class="login-box-msg">로그인 페이지</p>
										<form action="<%=request.getContextPath()%>/shop/login.do?"
											method="post">
											<div class="input-group mb-3">
												<input type="text" class="form-control"
													placeholder="아이디를 입력해주세요" name="shop_id">
												<div class="input-group-append">
													<div class="input-group-text"></div>
												</div>
											</div>
											<div class="input-group mb-3">
												<input type="password" class="form-control" name="shop_pw"
													placeholder="비밀번호를 입력해주세요">
												<div class="input-group-append">
													<div class="input-group-text"></div>
												</div>
											</div>
											<div class="row">
												<div class="col-12">
													<button type="submit" class="btn btn-primary float-right">로그인</button>
												</div>

											</div>
										</form>
										<p class="mb-1">
											<a href="forgot-password.html">아이디 찾기</a>
										</p>
										<p class="mb-0">
											<a href="register.html" class="text-center">패스워드 찾기</a>
										</p>
									</div>

								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="custom-tabs-one-messages"
							role="tabpanel" aria-labelledby="custom-tabs-one-messages-tab">
							<div class="login-box">


								<div class="card">
									<div class="card-body login-card-body">
										<p class="login-box-msg">로그인 페이지</p>
										<form action="<%=request.getContextPath()%>/manager/login.do"
											method="post">
											<div class="input-group mb-3">
												<input type="text" class="form-control"
													placeholder="아이디를 입력해주세요" name="manager_id">
												<div class="input-group-append">
													<div class="input-group-text"></div>
												</div>
											</div>
											<div class="input-group mb-3">
												<input type="password" class="form-control"
													name="manager_pw" placeholder="비밀번호를 입력해주세요">
												<div class="input-group-append">
													<div class="input-group-text"></div>
												</div>
											</div>
											<div class="row">
												<div class="col-12">
													<button type="submit" class="btn btn-primary float-right">로그인</button>
												</div>

											</div>
										</form>

										<p class="mb-1">
											<a href="forgot-password.html">아이디 찾기</a>
										</p>
										<p class="mb-0">
											<a href="register.html" class="text-center">패스워드 찾기</a>
										</p>
									</div>

								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="custom-tabs-one-settings"
							role="tabpanel" aria-labelledby="custom-tabs-one-settings-tab">
							<div class="login-box">


								<div class="card">
									<div class="card-body login-card-body">
										<p class="login-box-msg">로그인 페이지</p>
										<form action="<%=request.getContextPath()%>/deliver/login.do" method="post">
											<div class="input-group mb-3">
												<input type="text" class="form-control" placeholder="아이디를 입력해주세요" name="deliver_code">
												<div class="input-group-append">
													<div class="input-group-text"></div>
												</div>
											</div>
											<div class="input-group mb-3">
												<input type="password" class="form-control"
													placeholder="비밀번호를 입력해주세요" name="deliver_pw">
												<div class="input-group-append">
													<div class="input-group-text"></div>
												</div>
											</div>
											<div class="row">
												<div class="col-12">
													<button type="submit" class="btn btn-primary float-right">로그인</button>
												</div>

											</div>
										</form>

										<p class="mb-1">
											<a href="forgot-password.html">아이디 찾기</a>
										</p>
										<p class="mb-0">
											<a href="register.html" class="text-center">패스워드 찾기</a>
										</p>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<%
		String message = (String) request.getAttribute("message");
	if (message != null && !message.isEmpty()) {
	%>
	<script>
		alert("${message}");
		location.href = "login.do?id=${param.id}";
	</script>
	<%
		}
	%>


</body>

