<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<!-- Add Bootstrap CSS -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<!-- Add jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Add Bootstrap JS -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<div class="container">
		<h3>${loginUser.member_name }님의 장바구니</h3>
		<table class="table table-striped">
			<!--... existing table header and rows ...-->
			<tr>
				<th>상품명</th>
				<th>상품 가격</th>
				<th>상품 수량</th>
				<th>상품 총 가격</th>
				<th></th>
			</tr>
			<tr>
				<td><img src="data:image/jpeg;base64,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" alt="Product 1" width="50">
					새우깡</td>
				<td>₩2000</td>
				<td><input type="number" class="form-control" min="1" value="2"></td>
				<td class="total">₩1000</td>
				<td><button class="btn btn-danger"
						onclick="deleteProduct(this)">삭제</button></td>
			</tr>
			<tr>
				<td><img src="https://gdimg.gmarket.co.kr/1170875788/still/280?ver=1680819550" alt="Product 1" width="50">
					대파</td>
				<td>₩10000000</td>
				<td><input type="number" class="form-control" min="1" value="2"></td>
				<td class="total">₩10000000</td>
				<td><button class="btn btn-danger"
						onclick="deleteProduct(this)">삭제</button></td>
			</tr>
			
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>총 가격</td>
				<td class="total" id="totalPrice">1,000</td>
			</tr>
			<!--... other product rows ...-->
		</table>
		<div class="row">
		<div class="col-11"></div>
		<button class="btn btn-success" id="buyButton" sytle="text-align: right;">구매</button>
</div>
<br/>
	</div>
	</section>

	<script>
	function deleteProduct(button) {
		  var row = $(button).closest("tr");
		  row.remove();
		  updateTotalPrice();
		}

		$("input[type='number']").on("change", function() {
			updateTotalPrice($(this));
		});

		function updateTotalPrice(input) {
			var row = input.closest("tr");
			var price = parseFloat(row.find("td:nth-child(2)").text().substring(1));
			var quantity = parseInt(input.val());
			var total = price * quantity;
			row.find("td.total").text("₩" + total.toFixed(0));
			updateGrandTotal();
		}

		function updateGrandTotal() {
			var grandTotal = 0;

			$("td.total").each(function() {
				var rowTotal = parseFloat($(this).text().substring(1));
				grandTotal += rowTotal;
			});

			$(".total").last().text("₩" + grandTotal.toFixed(0));
		}

		$("#buyButton").on("click", function() {
			window.location.href = "payment.html"; // Replace "payment.html" with the URL of your payment screen
		});

		function updateTotalPrice() {
			  let totalPrice = 0;

			  // Loop through all product rows
			  $("table tr").each(function() {
			    let priceCell = $(this).find("td:nth-child(2)");
			    let quantityInput = $(this).find("td:nth-child(3) input");
			    let price = parseFloat(priceCell.text().substring(1)); // Remove the ₩ sign and parse to float
			    let quantity = parseInt(quantityInput.val());

			    if (!isNaN(price) && !isNaN(quantity)) {
			      totalPrice += price * quantity;
			    }
			  });

			  // Set the total price to 0 if it is negative
			  if (totalPrice < 0) {
			    totalPrice = 0;
			  }

			  // Update the total price cell
			  $("#totalPrice").text("₩" + totalPrice.toFixed(0));
			}


		// Call updateTotalPrice when the page loads
		$(document).ready(function() {
			updateTotalPrice();
		});

		// Call updateTotalPrice when any quantity input is changed
		$("table input[type='number']").on("change", function() {
			updateTotalPrice();
		});
		
		function calculateTotal(row) {
			  var price = parseFloat(row.querySelector('td:nth-child(2)').textContent.replace('₩',''));
			  var quantity = parseInt(row.querySelector('td:nth-child(3) input').value);
			  var total = price * quantity;
			  row.querySelector('td.total').textContent = '₩' + total.toFixed(2);
			}

			var rows = document.querySelectorAll('tr');
			for (var i = 1; i < rows.length; i++) {
			  calculateTotal(rows[i]);
			  rows[i].querySelector('td:nth-child(3) input').addEventListener('change', function() {
			    calculateTotal(this.parentNode.parentNode);
			  });
			}

	</script>

</body>


