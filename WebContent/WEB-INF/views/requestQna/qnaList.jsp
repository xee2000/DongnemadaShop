<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<body>

	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">QnA</h3>
				</div>

				<div class="card-body">
					<table class="table table-bordered table-hover">
						<colgroup>
							<col style="width: 8%;">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>질문 내용</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="notice" items="${dataMap.qna_list}">

								<tr style='font-size: 0.85em; cursor: pointer;'
									onclick="javascript:location.href='<%=request.getContextPath()%>/qna/detail.do?qna_code=${qna.qna_code }'">
									<td>${qna.qna_code }</td>
									<td>${qna.qna_content }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-12">
				<button type="button" class="btn btn-success float-right"
					onclick="javascript:location.href='<%=request.getContextPath()%>/qna/registForm.do'">Qna등록</button>
			</div>
<br/><br/>
		</div>
	</div>
</body>