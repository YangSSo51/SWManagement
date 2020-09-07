package com.sw.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.sw.web.domain.AssetManageVO;
import com.sw.web.service.AssetManageService;

@RestController
@RequestMapping(value="")
public class AjaxRestController {
	@Autowired
	private AssetManageService AssetManageService;
	
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
}
