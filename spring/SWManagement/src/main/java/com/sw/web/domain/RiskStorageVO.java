package com.sw.web.domain;

public class RiskStorageVO {
	private int risk_id;
	private int vul_id;
	private String result;
	public int getRisk_id() {
		return risk_id;
	}
	public void setRisk_id(int risk_id) {
		this.risk_id = risk_id;
	}
	public int getVul_id() {
		return vul_id;
	}
	public void setVul_id(int vul_id) {
		this.vul_id = vul_id;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
}
