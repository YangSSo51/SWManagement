package com.sw.web.domain;

import java.util.List;

public class RiskStorageVO {
	private int risk_id;
	private String item_num;
	private String result;
	
	private List<RiskStorageVO> list;
	
	public int getRisk_id() {
		return risk_id;
	}
	public void setRisk_id(int risk_id) {
		this.risk_id = risk_id;
	}

	public String getItem_num() {
		return item_num;
	}
	public void setItem_num(String item_num) {
		this.item_num = item_num;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public List<RiskStorageVO> getList() {
		return list;
	}
	public void setList(List<RiskStorageVO> list) {
		this.list = list;
	}
	
}
