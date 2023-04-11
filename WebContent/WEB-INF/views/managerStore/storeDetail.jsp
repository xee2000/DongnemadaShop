<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<body>
	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="card">
		<div class="card-body">
			<div id="example2_wrapper" class="dataTables_wrapper dt-bootstrap4">
				<div class="row">
					<div class="col-sm-12 col-md-6"></div>
					<div class="col-sm-12 col-md-6"></div>
				</div>
				<div class="row">
					<div class="col-3"></div>
					<div class="col-sm-6">
						<table id="example2"
							class="table table-bordered table-hover dataTable dtr-inline"
							aria-describedby="example2_info">
							<thead>
								<tr>
									<th class="sorting sorting_asc" tabindex="0"
										aria-controls="example2" rowspan="1" colspan="1"
										aria-sort="ascending"
										aria-label="Rendering engine: activate to sort column descending">Rendering
										engine</th>
									<th class="sorting" tabindex="0" aria-controls="example2"
										rowspan="1" colspan="1"
										aria-label="Browser: activate to sort column ascending">Browser</th>
								</tr>
							</thead>
							<tbody>

								<tr class="odd">
									<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
									<td>Firefox 1.0</td>
								</tr>
								<tr class="even">
									<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
									<td>Firefox 1.5</td>
								</tr>
								<tr class="odd">
									<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
									<td>Firefox 2.0</td>
								</tr>
								<tr class="even">
									<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
									<td>Firefox 3.0</td>
								</tr>
								<tr class="odd">
									<td class="sorting_1 dtr-control">Gecko</td>
									<td>Camino 1.0</td>
								</tr>
								<tr class="even">
									<td class="sorting_1 dtr-control">Gecko</td>
									<td>Camino 1.5</td>
								</tr>
								<tr class="odd">
									<td class="sorting_1 dtr-control">Gecko</td>
									<td>Netscape 7.2</td>
								</tr>
								<tr class="even">
									<td class="sorting_1 dtr-control">Gecko</td>
									<td>Netscape Browser 8</td>
								</tr>
								<tr class="odd">
									<td class="sorting_1 dtr-control">Gecko</td>
									<td>Netscape Navigator 9</td>
								</tr>
								<tr class="even">
									<td class="sorting_1 dtr-control">Gecko</td>
									<td>Mozilla 1.0</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<th rowspan="1" colspan="1">Rendering engine</th>
									<th rowspan="1" colspan="1">Browser</th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-3"></div>
					<div class="col-6  d-flex justify-content-center">
						<div class="dataTables_paginate paging_simple_numbers"
							id="example2_paginate">
							<ul class="pagination">
								<li class="paginate_button page-item previous disabled"
									id="example2_previous"><a href="#"
									aria-controls="example2" data-dt-idx="0" tabindex="0"
									class="page-link">《</a></li>
								<li class="paginate_button page-item active"><a href="#"
									aria-controls="example2" data-dt-idx="1" tabindex="0"
									class="page-link">1</a></li>
								<li class="paginate_button page-item "><a href="#"
									aria-controls="example2" data-dt-idx="2" tabindex="0"
									class="page-link">2</a></li>
								<li class="paginate_button page-item "><a href="#"
									aria-controls="example2" data-dt-idx="3" tabindex="0"
									class="page-link">3</a></li>
								<li class="paginate_button page-item "><a href="#"
									aria-controls="example2" data-dt-idx="4" tabindex="0"
									class="page-link">4</a></li>
								<li class="paginate_button page-item "><a href="#"
									aria-controls="example2" data-dt-idx="5" tabindex="0"
									class="page-link">5</a></li>
								<li class="paginate_button page-item "><a href="#"
									aria-controls="example2" data-dt-idx="6" tabindex="0"
									class="page-link">6</a></li>
								<li class="paginate_button page-item next" id="example2_next"><a
									href="#" aria-controls="example2" data-dt-idx="7" tabindex="0"
									class="page-link">》</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div style="width: 900px; height: 900px;">
		<!--차트가 그려질 부분-->
		<canvas id="myChart"></canvas>
	</div>

	<script type="text/javascript">
		var context = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(context,
				{
					type : 'bar', // 차트의 형태
					data : { // 차트에 들어갈 데이터
						labels : [
						//x 축
						'1', '2', '3', '4', '5', '6', '7' ],
						datasets : [ { //데이터
							label : 'test1', //차트 제목
							fill : false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
							data : [ 21, 19, 25, 20, 23, 26, 25 //x축 label에 대응되는 데이터 값
							],
							backgroundColor : [
							//색상
							'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)' ],
							borderColor : [
							//경계선 색상
							'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)' ],
							borderWidth : 1
						//경계선 굵기
						} /* ,
						                        {
						                            label: 'test2',
						                            fill: false,
						                            data: [
						                                8, 34, 12, 24
						                            ],
						                            backgroundColor: 'rgb(157, 109, 12)',
						                            borderColor: 'rgb(157, 109, 12)'
						                        } */
						]
					},
					options : {
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true
								}
							} ]
						}
					}
				});
	</script>

</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>