package com.sw.web.domain;

public class RiskManageVO {
	private int risk_id;
	private String version;
	private String cycle;
	private String date;
	private int asset_id;
	public int getRisk_id() {
		return risk_id;
	}
	public void setRisk_id(int risk_id) {
		this.risk_id = risk_id;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getCycle() {
		return cycle;
	}
	public void setCycle(String cycle) {
		this.cycle = cycle;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getAsset_id() {
		return asset_id;
	}
	public void setAsset_id(int asset_id) {
		this.asset_id = asset_id;
	}
	
}
