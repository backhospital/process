package com.mall.vo;

import java.sql.Timestamp;

public class listVO {
	
	private int idx;
	private String productid;
	private String data1;
	private String data2;
	private String data3;
	private String data4;
	private String data5;
	private String path;
	private Timestamp timestamp;
	private int verify;
	
	//alt shift s + r
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getData1() {
		return data1;
	}
	public void setData1(String data1) {
		this.data1 = data1;
	}
	public String getData2() {
		return data2;
	}
	public void setData2(String data2) {
		this.data2 = data2;
	}
	public String getData3() {
		return data3;
	}
	public void setData3(String data3) {
		this.data3 = data3;
	}
	public String getData4() {
		return data4;
	}
	public void setData4(String data4) {
		this.data4 = data4;
	}
	public String getData5() {
		return data5;
	}
	public void setData5(String data5) {
		this.data5 = data5;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public Timestamp getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
	public int getVerify() {
		return verify;
	}
	public void setVerify(int verify) {
		this.verify = verify;
	}	
}