package com.sw.web.domain;

public class AssetManageVO {
	private int asset_id;
	private String asset_name;
	private String main_device;
	private String sub_device;
	private String integ_check;
	private String hw_access;
	private String hash_logic;
	private String hash_firm;
	private String hash_op;
	private String hash_step;
	private String hash_engine;
	private int integ_count;
	private int risk_count;
	public int getAsset_id() {
		return asset_id;
	}
	public void setAsset_id(int asset_id) {
		this.asset_id = asset_id;
	}
	public String getAsset_name() {
		return asset_name;
	}
	public void setAsset_name(String asset_name) {
		this.asset_name = asset_name;
	}
	public String getMain_device() {
		return main_device;
	}
	public void setMain_device(String main_device) {
		this.main_device = main_device;
	}
	public String getSub_device() {
		return sub_device;
	}
	public void setSub_device(String sub_device) {
		this.sub_device = sub_device;
	}
	public String getInteg_check() {
		return integ_check;
	}
	public void setInteg_check(String integ_check) {
		this.integ_check = integ_check;
	}
	public String getHw_access() {
		return hw_access;
	}
	public void setHw_access(String hw_access) {
		this.hw_access = hw_access;
	}
	public String getHash_logic() {
		return hash_logic;
	}
	public void setHash_logic(String hash_logic) {
		this.hash_logic = hash_logic;
	}
	public String getHash_firm() {
		return hash_firm;
	}
	public void setHash_firm(String hash_firm) {
		this.hash_firm = hash_firm;
	}
	public String getHash_op() {
		return hash_op;
	}
	public void setHash_op(String hash_op) {
		this.hash_op = hash_op;
	}
	public String getHash_step() {
		return hash_step;
	}
	public void setHash_step(String hash_step) {
		this.hash_step = hash_step;
	}
	public String getHash_engine() {
		return hash_engine;
	}
	public void setHash_engine(String hash_engine) {
		this.hash_engine = hash_engine;
	}
	public int getInteg_count() {
		return integ_count;
	}
	public void setInteg_count(int integ_count) {
		this.integ_count = integ_count;
	}
	public int getRisk_count() {
		return risk_count;
	}
	public void setRisk_count(int risk_count) {
		this.risk_count = risk_count;
	}
}
