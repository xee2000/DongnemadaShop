package com.command.dto;

public class CancelVO {
	
	private String cancel_code;
	private String cancel_status;
	private int order_number;
	private int order_qty;
	private int order_allprice;
	public String getCancel_code() {
		return cancel_code;
	}
	public void setCancel_code(String cancel_code) {
		this.cancel_code = cancel_code;
	}
	public String getCancel_status() {
		return cancel_status;
	}
	public void setCancel_status(String cancel_status) {
		this.cancel_status = cancel_status;
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
