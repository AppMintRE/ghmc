package com.resustainability.reisp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.GHMC;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.GHMC;
import com.resustainability.reisp.model.RoleMapping;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.service.GHMCDATAService;

@Controller
public class GHMCDATAController {

	@InitBinder
    public void initBinder(WebDataBinder binder) { 
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(GHMCDATAController.class);
	
	@Autowired
	GHMCDATAService service;
	
	@RequestMapping(value = "/home", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView ghmc(@ModelAttribute User user,GHMC obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.ghmc);
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setRole(role);
			obj.setUser_id(userId);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/sfa", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView sfa(@ModelAttribute User user,GHMC obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.sfa);
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setRole(role);
			obj.setUser_id(userId);
			List<GHMC> objList = service.getSFAList(obj);
			model.addObject("objList", objList);
			
			List<GHMC> zoneList = service.getZoneList(obj);
			model.addObject("zoneList", zoneList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/add-sfa", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addSfa(@ModelAttribute User user,GHMC obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.addSfa);
		String userId = null;
		String userName = null;
		String role = null;
		try {
			model.addObject("action", "add");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setUser_id(userId);
			obj.setRole(role);
			
			List<GHMC> zoneList = service.getZoneList(obj);
			model.addObject("zoneList", zoneList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/add-sfa-data", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addSFAData(@ModelAttribute GHMC obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		String role = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/sfa");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setUser_id(userId);
			obj.setCreated_by(userId);
			obj.setRole(role);
			obj.setCreatedBy(userId);
			flag = service.addSFAData(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Record Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Record is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Record is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/get-sfa-data", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView getSFAData(@ModelAttribute GHMC obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.addSfa);
		String userId = null;
		String userName = null;
		String role = null;
		
		try {
			model.addObject("action", "edit");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setUser_id(userId);
			obj.setRole(role);
			GHMC sfamasterData = service.getSFAMasterData(obj);
			model.addObject("sfamasterData", sfamasterData);
		
			GHMC ghms = new GHMC();
			
			List<GHMC> zoneList = service.getZoneList(ghms);
			model.addObject("zoneList", zoneList);
			
			ghms.setZoneCode(sfamasterData.getZoneCode());
			ghms.setCircleCode(sfamasterData.getCircleCode());
			List<GHMC> circleList = service.getCircleList(ghms);
			model.addObject("circleList", circleList);
			
			List<GHMC> wardList = service.getWardList(ghms);
			model.addObject("wardList", wardList);
			
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-sfa-data", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updateSFAMasterData(@ModelAttribute GHMC obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		String role = null;
		String msg = "Updated";
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/sfa");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setUser_id(userId);
			obj.setRole(role);
			obj.setModified_by(userId);
			
			flag = service.updateSFAMasterData(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Record Updated Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Updating Record is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Updating Record is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	@RequestMapping(value = "/ajax/getSFAList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<GHMC> getSFAList(@ModelAttribute GHMC obj,HttpSession session) {
		List<GHMC> objList = null;
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setUser_id(userId);
			obj.setRole(role);
			objList = service.getSFAList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getSFAList : " + e.getMessage());
		}
		return objList;
	}
	
	
	@RequestMapping(value = "/ajax/getGHMCList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<GHMC> getCompaniesList(@ModelAttribute GHMC obj,HttpSession session) {
		List<GHMC> objList = null;
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setUser_id(userId);
			obj.setRole(role);
			objList = service.getGHMCDATAList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getCompaniesList : " + e.getMessage());
		}
		return objList;
	}
	
	
	@RequestMapping(value = "/add-data", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addData(@ModelAttribute User user,GHMC obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.addData);
		String userId = null;
		String userName = null;
		String role = null;
		try {
			model.addObject("action", "add");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setUser_id(userId);
			obj.setRole(role);
			
			List<GHMC> zoneList = service.getZoneList(obj);
			model.addObject("zoneList", zoneList);
			
			List<GHMC> circleList = service.getCircleList(obj);
			model.addObject("circleList", circleList);
			
			List<GHMC> wardList = service.getWardList(obj);
			model.addObject("wardList", wardList);
			
			List<GHMC> tList = service.getTransacxtionList(obj);
			model.addObject("tList", tList);
			
			List<GHMC> vehicle = service.getVehicleList(obj);
			model.addObject("vehicle", vehicle);
			
			List<GHMC> owner = service.getOwnerList(obj);
			model.addObject("owner", owner);
			
			List<GHMC> sfa = service.getSFAList(obj);
			model.addObject("sfa", sfa);
			
			List<GHMC> operation = service.getOperationList(obj);
			model.addObject("operation", operation);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/ajax/getTransactionList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<GHMC> getTransacxtionList(@ModelAttribute GHMC obj,HttpSession session) {
		List<GHMC> objsList = null;
		try {
			objsList = service.getTransacxtionList(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getTransacxtionList : " + e.getMessage());
		}
		return objsList;
	}
	
	@RequestMapping(value = "/ajax/getCircleDataByZone", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<GHMC> getCircleList(@ModelAttribute GHMC obj,HttpSession session) {
		List<GHMC> objsList = null;
		try {
			objsList = service.getCircleList(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getCircleList : " + e.getMessage());
		}
		return objsList;
	}
	
	@RequestMapping(value = "/ajax/getWardDataByCircle", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<GHMC> getWardList(@ModelAttribute GHMC obj,HttpSession session) {
		List<GHMC> objsList = null;
		try {
			objsList = service.getWardList(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getWardList : " + e.getMessage());
		}
		return objsList;
	}
	
	@RequestMapping(value = "/add-master-data", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addMasterData(@ModelAttribute GHMC obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		String role = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/home");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setUser_id(userId);
			obj.setRole(role);
			obj.setCreatedBy(userId);
			flag = service.addMasterData(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Record Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Record is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Record is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/get-master-data", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView getMasterData(@ModelAttribute GHMC obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.addData);
		String userId = null;
		String userName = null;
		String role = null;
		
		try {
			model.addObject("action", "edit");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setUser_id(userId);
			obj.setRole(role);
			GHMC masterData = service.getMasterData(obj);
			model.addObject("masterData", masterData);
			
			GHMC historyData = service.getMasterHistoryData(obj);
			model.addObject("historyData", historyData);
			
			GHMC ghms = new GHMC();
			
			List<GHMC> zoneList = service.getZoneList(ghms);
			model.addObject("zoneList", zoneList);
			
			ghms.setZoneCode(masterData.getZoneCode());
			ghms.setCircleCode(masterData.getCircleCode());
			List<GHMC> circleList = service.getCircleList(ghms);
			model.addObject("circleList", circleList);
			
			List<GHMC> wardList = service.getWardList(ghms);
			model.addObject("wardList", wardList);
			
			List<GHMC> tList = service.getTransacxtionList(ghms);
			model.addObject("tList", tList);
			
			List<GHMC> vehicle = service.getVehicleList(obj);
			model.addObject("vehicle", vehicle);
			
			List<GHMC> owner = service.getOwnerList(obj);
			model.addObject("owner", owner);
			
			List<GHMC> operation = service.getOperationList(obj);
			model.addObject("operation", operation);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-master-data", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updateMasterData(@ModelAttribute GHMC obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		String role = null;
		String msg = "Updated";
		String msg1 = "Updating";
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/home");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("USER_ROLE");
			obj.setUser_id(userId);
			obj.setRole(role);
			
			if("Reviewer".equalsIgnoreCase(role)) {
				obj.setReviewedBy(userId);
				msg = "Reviewed";
				msg1 = "Reviewing";
			}else if("Approver".equalsIgnoreCase(role)) {
				obj.setApprovedBy(userId);
				msg = "Approved";
				msg1 = "Approving";
			}
			flag = service.updateMasterData(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Record "+msg+" Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error",msg1+" Record is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error",msg1+" Record is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
}
