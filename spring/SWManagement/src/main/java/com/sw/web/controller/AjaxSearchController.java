package com.sw.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.SearchVO;
import com.sw.web.service.AssetManageService;
import com.sw.web.service.AssetPurchaseService;
import com.sw.web.service.IntegKeepService;
import com.sw.web.service.RiskManageService;
import com.sw.web.service.RiskStorageService;

@RestController
@RequestMapping(value="")
public class AjaxSearchController {
	@Autowired
	private AssetManageService AssetManageService;
	@Autowired
	private AssetPurchaseService AssetPurchaseService;
	@Autowired
	private IntegKeepService IntegKeepService;
	@Autowired
	private RiskManageService RiskManageService;
	@Autowired
	private RiskStorageService RiskStorageService;
	
}
