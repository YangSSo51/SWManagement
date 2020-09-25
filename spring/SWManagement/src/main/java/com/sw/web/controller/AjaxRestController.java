package com.sw.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.IntegKeepVO;
import com.sw.web.domain.RiskManageVO;
import com.sw.web.domain.RiskStorageVO;
import com.sw.web.service.AssetManageService;
import com.sw.web.service.IntegKeepService;
import com.sw.web.service.RiskManageService;
import com.sw.web.service.RiskStorageService;

@RestController
@RequestMapping(value="")
public class AjaxRestController {
	@Autowired
	private AssetManageService AssetManageService;
	@Autowired
	private IntegKeepService IntegKeepService;
	@Autowired
	private RiskManageService RiskManageService;
	@Autowired
	private RiskStorageService RiskStorageService;
	
	@PostMapping("/asset/update")    
	public String restController(@RequestBody String data)  throws Exception {
    	System.out.println(data);
    	data = data.replace("null,", "");
    	System.out.println(data);
    	JsonParser jsonParser = new JsonParser();
    	JsonObject jo = (JsonObject) jsonParser.parse(data);
    	//System.out.println(jo.get("vo").getAsJsonArray().isJsonNull());
    	//nullpoint exception
    	if(!jo.get("vo").getAsJsonArray().isJsonNull()) {
	    	JsonArray array = jo.get("vo").getAsJsonArray();
	    	JsonObject object;
	    	for(int i=0;i<array.size();i++) {
	        	AssetManageVO vo = new AssetManageVO();
	    		object = (JsonObject) array.get(i);
	    		vo.setAsset_id(object.get("asset_id").getAsInt());
	    		vo.setInteg_check(object.get("integ_check").getAsString());
	    		vo.setHw_access(object.get("hw_access").getAsString());
	    		vo.setHash_logic(object.get("hash_logic").getAsString());
	    		vo.setHash_engine(object.get("hash_engine").getAsString());
	
	    		AssetManageService.updateServer(vo);
	    	}
    	}
	return "redirect:/asset/read/list";
	}
	
	@ResponseBody
	@RequestMapping(value = "/id_check.do", method = RequestMethod.POST)
	public String restIntegAssetCheckController(@RequestBody AssetManageVO vo)  throws Exception {
    	System.out.println(vo.getAsset_id());
    	//JsonParser jsonParser = new JsonParser();
    	//JsonObject jo = (JsonObject) jsonParser.parse(data);
 
    	//int id = jo.get("id").getAsInt();
    	int id = vo.getAsset_id();
    	AssetManageVO asset_vo = AssetManageService.readById(id);
    	if(asset_vo.getMain_device().equals("PLC")||asset_vo.getMain_device().equals("DCS")) {
    		return "1";
    	}else {
    		return "2";
    	}
	}
	
	@ResponseBody
	@RequestMapping(value = "/value_check.do", method = RequestMethod.POST)
	public String restIntegValueCheckController(@RequestBody AssetManageVO vo)  throws Exception {
    	System.out.println(vo.getAsset_id());
    	String result="NO";
    	int id = vo.getAsset_id();
    	int num = vo.getInteg_count();
    	AssetManageVO asset_vo = AssetManageService.readById(id);
    	String hash_logic = vo.getHash_logic();
    	String hash_firm = vo.getHash_firm();
    	String hash_op = vo.getHash_op();
    	String hash_step = vo.getHash_step();
    	String hash_engine = vo.getHash_engine();
    	System.out.println(num+"결과 : "+hash_logic);

    	switch(num){
    	case 1:
        	if(value_check(hash_logic,asset_vo.getHash_logic())==1)result="OK";
        	break;
    	case 2:
        	if(value_check(hash_firm,asset_vo.getHash_firm())==1) result="OK";
        	break;
    	case 3:
        	if(value_check(hash_op,asset_vo.getHash_op())==1) result="OK";
        	break;
    	case 4:
        	if(value_check(hash_step,asset_vo.getHash_step())==1) result="OK";
        	break;
    	case 5:
        	if(value_check(hash_engine,asset_vo.getHash_engine())==1) result="OK";
        	break;
    	}
		System.out.println("결과는 "+result);

		return result+"/"+asset_vo.getMain_device();
	}
	
	public int value_check(String value,String compare) {
		if(value!=null && value.equals(compare)) {
			System.out.println(value+" : " +compare);
			return 1;
		}
		else return -1;
	}
	
	@RequestMapping(value = "/risk_select.do", method = RequestMethod.POST)
	public String restRiskSelectController(@RequestBody RiskManageVO vo)  throws Exception {
    	int id = vo.getRisk_id();
    	System.out.println(id);
    	if(id>0) {
        	System.out.println("detail페이지");
    		return "risk/read/detail/"+id;
    	}else {
    		return "risk/add";
    	}
	}
	
	@RequestMapping(value = "/risk_storage.do", method = RequestMethod.POST)
	public String restRiskStorageController(@RequestBody RiskStorageVO vo)  throws Exception {
    	System.out.println("risk_storage");
    	
    	int id = RiskManageService.readList().size();
    	System.out.println(id);

    	for(RiskStorageVO v:vo.getList()) {
    		v.setRisk_id(id);
    		System.out.println("risk_id : "+v.getRisk_id());
    		System.out.println("item_num : "+v.getItem_num());
    		System.out.println("result : "+v.getResult());
    		RiskStorageService.add(v);
    	}
    	
    	return "risk/read/list";
	}
}
