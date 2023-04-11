package com.command.dto;

public class RefundVO {

		private String refund_code;
		private String refund_status;
		private String refund_reason;
		private int order_number;
		private int order_qty;
		private int order_allprice;
		
		
		public String getRefund_code() {
			return refund_code;
		}
		public void setRefund_code(String refund_code) {
			this.refund_code = refund_code;
		}
		public String getRefund_status() {
			return refund_status;
		}
		public void setRefund_status(String refund_status) {
			this.refund_status = refund_status;
		}
		public String getRefund_reason() {
			return refund_reason;
		}
		public void setRefund_reason(String refund_reason) {
			this.refund_reason = refund_reason;
		}
		public int getOrder_number() {
			return order_number;
		}
		public void setOrder_number(int order_number) {
			this.order_number = order_number;
		}
		public int getOrder_qty() {
			return order_qty;
		}
		public void setOrder_qty(int order_qty) {
			this.order_qty = order_qty;
		}
		public int getOrder_allprice() {
			return order_allprice;
		}
		public void setOrder_allprice(int order_allprice) {
			this.order_allprice = order_allprice;
		}
		
		

}
