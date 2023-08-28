package com.resustainability.reisp.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.util.WorkbookUtil;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.resustainability.reisp.common.DateParser;
import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.RoleMapping;
import com.resustainability.reisp.model.SBU;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.service.BrainBoxService;
import com.resustainability.reisp.service.CompanyService;
import com.resustainability.reisp.service.ProjectService;
import com.resustainability.reisp.service.UserService;

@Controller
public class BrainBoxController {

	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(BrainBoxController.class);
	
	
	@Autowired
	BrainBoxService service;
	
	@Autowired
	UserService service1;

	@Value("${common.error.message}")
	public String commonError;
	
	@Value("${record.dataexport.success}")
	public String dataExportSucess;
	
	@Value("${record.dataexport.invalid.directory}")
	public String dataExportInvalid;
	
	@Value("${record.dataexport.error}")
	public String dataExportError;
	
	@Value("${record.dataexport.nodata}")
	public String dataExportNoData;
	
	@Value("${template.upload.common.error}")
	public String uploadCommonError;
	
	@Value("${template.upload.formatError}")
	public String uploadformatError;
	
	@RequestMapping(value = "/bb-is", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView bbForm(@ModelAttribute User user,BrainBox obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.bbForm);
		String userId = null;
		String userName = null;
		List<BrainBox> companiesList = null;
		String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");
			String email = (String) session.getAttribute("USER_EMAIL");
			user.setRole(role);
			user.setUser_id(userId);
			User uBoj = new User();
			uBoj.setEmail_id(email);
			List <BrainBox> projectsList = service.getProjectstList();
			model.addObject("projectsList", projectsList);

			User userDetails = service1.validateUser(user);
			model.addObject("reward_points", userDetails.getReward_points());
			List <BrainBox> deptsList = service.getDepartments();
			model.addObject("deptsList", deptsList);
			
			List<BrainBox> sbuList = service.getSbuList();
			model.addObject("sbuList", sbuList);
			
			List<BrainBox> themeList = service.getThemeList();
			model.addObject("themeList", themeList);
			
			List<User> rewardsList = service1.getRewardsHistory(user);
		     model.addObject("rewardsList", rewardsList);
			 
		     companiesList = service.getThemesInBB(obj);
		     if(companiesList.size() > 0) {
				 model.addObject("counts", companiesList.get(0).getCounts());
				
			 }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/bb-sbu", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView bbFormView(@ModelAttribute User user,BrainBox obj, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.bbSbuForm);
		String userId = null;
		String userName = null;
		List<BrainBox> companiesList = null;
		String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");
			String email = (String) session.getAttribute("USER_EMAIL");
			user.setRole(role);
			user.setUser_id(userId);
			User uBoj = new User();
			uBoj.setEmail_id(email);
			List <BrainBox> projectsList = service.getProjectstList();
			model.addObject("projectsList", projectsList);

			User userDetails = service1.validateUser(user);
			model.addObject("reward_points", userDetails.getReward_points());
			List <BrainBox> deptsList = service.getDepartments();
			model.addObject("deptsList", deptsList);
			
			List<BrainBox> sbuList = service.getSbuList();
			model.addObject("sbuList", sbuList);
			
			List<BrainBox> themeList = service.getThemeList();
			model.addObject("themeList", themeList);
			
			List<User> rewardsList = service1.getRewardsHistory(user);
		     model.addObject("rewardsList", rewardsList);
			 
		     companiesList = service.getThemesInBB1(obj);
		     if(companiesList.size() > 0) {
				 model.addObject("counts", companiesList.get(0).getCounts());
				 model.addObject("theme", companiesList.get(0).getTheme_code());
				
			 }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	@RequestMapping(value = "/ajax/getBBListSBU", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<BrainBox> getThemesInBBSBU(@ModelAttribute BrainBox obj,HttpSession session) {
		List<BrainBox> companiesList = null;
		String userId = null;
		String userName = null;String role = null;String idea_role = null;
		try {
			
			obj.setUser(userId);
			obj.setRole(role);obj.setIdea_base_role(idea_role);obj.setIdea_base_role(idea_role);
			if(!StringUtils.isEmpty(obj.getFrom_and_to())) {
				if(obj.getFrom_and_to().contains("to")) {
					String [] dates = obj.getFrom_and_to().split("to");
					obj.setFrom_date(dates[0].trim());
					obj.setTo_date(dates[1].trim());
				}else {
					obj.setFrom_date(obj.getFrom_and_to());
				}
			}
			companiesList = service.getThemesInBB1(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getThemesInBB : " + e.getMessage());
		}
		return companiesList;
	}

	@RequestMapping(value = "/ajax/getRoleMappingforBBForm", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<BrainBox> getRoleMappingforBBForm(@ModelAttribute BrainBox obj,HttpSession session) {
		List<BrainBox> departments = null;
		String userId = null; 
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setProject(obj.getProject_code());
			departments = service.getRoleMappingforBBForm(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getRoleMappingforBBForm : " + e.getMessage());
		}
		return departments;
	}
	
	@RequestMapping(value = "/ajax/getBBHistoryList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<BrainBox> getBBHistoryList(@ModelAttribute BrainBox obj,HttpSession session) {
		List<BrainBox> companiesList = null;
		String userId = null;
		String userName = null;
		String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");
			obj.setUser(userId);
			obj.setRole(role);obj.setIdea_base_role(idea_role);
			obj.setFrom_date(DateParser.parseTrickyDate(obj.getFrom_date()));
			obj.setTo_date(DateParser.parseTrickyDate(obj.getTo_date()));
			companiesList = service.getBBHistoryList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getBBHistoryList : " + e.getMessage());
		}
		return companiesList;
	}
	
	@RequestMapping(value = "/ajax/PHFilter", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<BrainBox> PHFilter(@ModelAttribute BrainBox obj,HttpSession session) {
		List<BrainBox> departments = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setProject(obj.getProject_code());
			departments = service.PHFilter(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("PHFilter : " + e.getMessage());
		}
		return departments;
	}
	
	@RequestMapping(value = "/update-bb-form", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView irmUpdateForm(@ModelAttribute BrainBox bb, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.bbUpdate);
		String userId = null;
		String userName = null;String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");

			bb.setUser_id(userId);
			bb.setUser_name(userName);
			String email = (String) session.getAttribute("USER_EMAIL");
			bb.setEmail(email);
			bb.setCreated_by(userId);
			bb.setRole(role);
			bb.setIdea_base_role(idea_role);
			List<BrainBox> themeList = service.getThemeList();
			model.addObject("themeList", themeList);
			
			List<BrainBox> sbuList = service.getSBUList();
			model.addObject("sbuList", sbuList);
			BrainBox ob = new BrainBox();
			ob.setUser_id(userId);
			ob.setUser_name(userName);
			ob.setEmail(email);
			ob.setCreated_by(userId);
			ob.setRole(role);
			ob.setIdea_base_role(idea_role);
			List<BrainBox> ideaList = service.getThemesInBB(ob);
			model.addObject("ideaList", ideaList);
			
			List<BrainBox> IB_list = service.getIB_listInBB(ob);
			model.addObject("IB_list", IB_list);
			
			BrainBox BBDetails = service.getBBDocumentDEtails(bb);
			model.addObject("BBDetails", BBDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-bb-form/{idea_no}", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView irmUpdateFormWithId(@ModelAttribute BrainBox bb,@PathVariable("idea_no") String idea_no , HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.bbUpdate);
		String userId = null;
		String userName = null;String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");

			bb.setUser_id(userId);
			bb.setUser_name(userName);
			String email = (String) session.getAttribute("USER_EMAIL");
			bb.setEmail(email);
			bb.setCreated_by(userId);
			bb.setRole(role);
			bb.setIdea_base_role(idea_role);
			List<BrainBox> themeList = service.getThemeList();
			model.addObject("themeList", themeList);
			
			List<BrainBox> sbuList = service.getSBUList();
			model.addObject("sbuList", sbuList);
			BrainBox ob = new BrainBox();
			ob.setUser_id(userId);
			ob.setUser_name(userName);
			ob.setEmail(email);
			ob.setCreated_by(userId);
			ob.setRole(role);
			ob.setIdea_base_role(idea_role);
			List<BrainBox> ideaList = service.getThemesInBB(ob);
			model.addObject("ideaList", ideaList);
			
			List<BrainBox> IB_list = service.getIB_listInBB(ob);
			model.addObject("IB_list", IB_list);
			
			BrainBox BBDetails = service.getBBDocumentDEtails(bb);
			model.addObject("BBDetails", BBDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}

	@RequestMapping(value = "/ajax/getBBList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<BrainBox> getThemesInBB(@ModelAttribute BrainBox obj,HttpSession session) {
		List<BrainBox> companiesList = null;
		String userId = null;
		String userName = null;String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");
			obj.setUser(userId);
			obj.setRole(role);obj.setIdea_base_role(idea_role);obj.setIdea_base_role(idea_role);
			if(!StringUtils.isEmpty(obj.getFrom_and_to())) {
				if(obj.getFrom_and_to().contains("to")) {
					String [] dates = obj.getFrom_and_to().split("to");
					obj.setFrom_date(dates[0].trim());
					obj.setTo_date(dates[1].trim());
				}else {
					obj.setFrom_date(obj.getFrom_and_to());
				}
			}
			companiesList = service.getThemesInBB(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getThemesInBB : " + e.getMessage());
		}
		return companiesList;
	}

	
	@RequestMapping(value = "/ajax/getThemeFilterListInBB", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<BrainBox> getThemeFilterListInBB(@ModelAttribute BrainBox obj,HttpSession session) {
		List<BrainBox> objsList = null;
		String userId = null;
		String userName = null;String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");
			obj.setUser(userId);
			obj.setRole(role);obj.setIdea_base_role(idea_role);obj.setIdea_base_role(idea_role);
			if(!StringUtils.isEmpty(obj.getFrom_and_to())) {
				if(obj.getFrom_and_to().contains("to")) {
					String [] dates = obj.getFrom_and_to().split("to");
					obj.setFrom_date(dates[0].trim());
					obj.setTo_date(dates[1].trim());
				}else {
					obj.setFrom_date(obj.getFrom_and_to());
				}
			}
			objsList = service.getThemeFilterListInBB(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getThemeFilterListInBB : " + e.getMessage());
		}
		return objsList;
	}
	
	@RequestMapping(value = "/ajax/getStatusFilterListInBB", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<BrainBox> getStatusFilterListInThemes(@ModelAttribute BrainBox obj,HttpSession session) {
		List<BrainBox> objsList = null;
		String userId = null;
		String userName = null;String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");
			obj.setUser(userId);
			obj.setRole(role);obj.setIdea_base_role(idea_role);obj.setIdea_base_role(idea_role);
			if(!StringUtils.isEmpty(obj.getFrom_and_to())) {
				if(obj.getFrom_and_to().contains("to")) {
					String [] dates = obj.getFrom_and_to().split("to");
					obj.setFrom_date(dates[0].trim());
					obj.setTo_date(dates[1].trim());
				}else {
					obj.setFrom_date(obj.getFrom_and_to());
				}
			}
			objsList = service.getStatusFilterListInThemes(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getStatusFilterListInThemes : " + e.getMessage());
		}
		return objsList;
	}
	@RequestMapping(value = "/ajax/getFilteredProjectsListBB", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<BrainBox> getFilteredProjectsListBB(@ModelAttribute BrainBox obj,HttpSession session) {
		List<BrainBox> objsList = null;
		try {
			objsList = service.getFilteredProjectsListBB(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getFilteredProjectsListBB : " + e.getMessage());
		}
		return objsList;
	}
	@RequestMapping(value = "/add-idea", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addTheme(@ModelAttribute BrainBox obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;String email = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect://bb-is");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			email = (String) session.getAttribute("USER_EMAIL");
			obj.setCreated_by(userId);
			obj.setUser_id(userId);
			obj.setUser(userId);
			obj.setUser_name(userName);
			obj.setEmail(email);
			flag = service.addTheme(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Idea Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Idea is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Idea is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-idea", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updateTheme(@ModelAttribute BrainBox obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		String email,sbu_name = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect://bb-is");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			email = (String) session.getAttribute("USER_EMAIL");
			sbu_name = (String) session.getAttribute("SBU_NAME");
			obj.setUser_id(userId);
			obj.setUser(userId);
			obj.setUser_name(userName);
			obj.setEmail(email);
			obj.setModified_by(userId);
			obj.setSbu_name(sbu_name);
			flag = service.updateTheme(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Idea Updated Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Updating Idea is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Updating Idea is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/export-idea", method = {RequestMethod.GET,RequestMethod.POST})
	public void exportTheme(HttpServletRequest request, HttpServletResponse response,HttpSession session,@ModelAttribute BrainBox obj,RedirectAttributes attributes){
		ModelAndView view = new ModelAndView(PageConstants.theme);
		List<BrainBox> dataList = new ArrayList<BrainBox>();
		String userId = null;String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");userName = (String) session.getAttribute("USER_NAME");
			view.setViewName("redirect:/bb-is");
			dataList = service.getThemesInBBXLFile(obj); 
			if(dataList != null && dataList.size() > 0){
	            XSSFWorkbook  workBook = new XSSFWorkbook ();
	            XSSFSheet sheet = workBook.createSheet(WorkbookUtil.createSafeSheetName("BrainBox"));
		        workBook.setSheetOrder(sheet.getSheetName(), 0);
		        
		        byte[] blueRGB = new byte[]{(byte)0, (byte)176, (byte)240};
		        byte[] yellowRGB = new byte[]{(byte)255, (byte)192, (byte)0};
		        byte[] greenRGB = new byte[]{(byte)146, (byte)208, (byte)80};
		        byte[] redRGB = new byte[]{(byte)255, (byte)0, (byte)0};
		        byte[] whiteRGB = new byte[]{(byte)255, (byte)255, (byte)255};
		        
		        boolean isWrapText = true;boolean isBoldText = true;boolean isItalicText = false; int fontSize = 11;String fontName = "Times New Roman";
		        CellStyle blueStyle = cellFormating(workBook,blueRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle yellowStyle = cellFormating(workBook,yellowRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle greenStyle = cellFormating(workBook,greenRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle redStyle = cellFormating(workBook,redRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle whiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        CellStyle indexWhiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        isWrapText = true;isBoldText = false;isItalicText = false; fontSize = 9;fontName = "Times New Roman";
		        CellStyle sectionStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        XSSFRow heading = sheet.createRow(1);
		        String header = "Idea - Report" ;
		        Cell cell1 = heading.createCell(0);
		        cell1.setCellStyle(greenStyle);
				cell1.setCellValue(header);
				
	            XSSFRow headingRow = sheet.createRow(0);
	        	String headerString = "Title,Theme,Description,SBU,Project,Department,Status,Created Date,Modified Date" + 
	    				"";
	            String[] firstHeaderStringArr = headerString.split("\\,");
	            
	            for (int i = 0; i < firstHeaderStringArr.length; i++) {		        	
		        	Cell cell = headingRow.createCell(i);
			        cell.setCellStyle(greenStyle);
					cell.setCellValue(firstHeaderStringArr[i]);
				}
	            
	            short rowNo = 1;
	            for (BrainBox obj1 : dataList) {
	                XSSFRow row = sheet.createRow(rowNo);
	                int c = 0;
	            
	                Cell cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getTitle());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getTheme_code() +" - "+obj1.getTheme_name());	

					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getDescription());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getSbu_code() +" - "+obj1.getSbu_name());	
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getProject_code() +" - "+obj1.getProject_name());	
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getDepartment_code() +" - "+obj1.getDepartment_name());	

					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getStatus());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					String createdDAte = obj1.getCreated_date();
					if(!StringUtils.isEmpty(createdDAte)) {
						createdDAte = createdDAte.replace("<br> | ", "");
					}
					cell.setCellValue (createdDAte);
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					String modifiedDAte = obj1.getAction_taken();
					if(!StringUtils.isEmpty(modifiedDAte)) {
						modifiedDAte = modifiedDAte.replace("<br> | ", "");
					}
					cell.setCellValue (modifiedDAte);
					
	                rowNo++;
	            }
	            for(int columnIndex = 0; columnIndex < firstHeaderStringArr.length; columnIndex++) {
	        		sheet.setColumnWidth(columnIndex, 25 * 200);
				}
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HHmmss");
                Date date = new Date();
                String fileName = "Brain Box_"+dateFormat.format(date);
                
	            try{
	                /*FileOutputStream fos = new FileOutputStream(fileDirectory +fileName+".xls");
	                workBook.write(fos);
	                fos.flush();*/
	            	
	               response.setContentType("application/.csv");
	 			   response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	 			   response.setContentType("application/vnd.ms-excel");
	 			   // add response header
	 			   response.addHeader("Content-Disposition", "attachment; filename=" + fileName+".xlsx");
	 			   
	 			    //copies all bytes from a file to an output stream
	 			   workBook.write(response.getOutputStream()); // Write workbook to response.
		           workBook.close();
	 			    //flushes output stream
	 			    response.getOutputStream().flush();
	            	
	                
	                attributes.addFlashAttribute("success",dataExportSucess);
	            	//response.setContentType("application/vnd.ms-excel");
	            	//response.setHeader("Content-Disposition", "attachment; filename=filename.xls");
	            	//XSSFWorkbook  workbook = new XSSFWorkbook ();
	            	// ...
	            	// Now populate workbook the usual way.
	            	// ...
	            	//workbook.write(response.getOutputStream()); // Write workbook to response.
	            	//workbook.close();
	            }catch(FileNotFoundException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportInvalid);
	            }catch(IOException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportError);
	            }
         }else{
        	 attributes.addFlashAttribute("error",dataExportNoData);
         }
		}catch(Exception e){	
			e.printStackTrace();
			logger.error("exportTheme : : User Id - "+userId+" - User Name - "+userName+" - "+e.getMessage());
			attributes.addFlashAttribute("error", commonError);			
		}
		//return view;
	}
	

	private CellStyle cellFormating(XSSFWorkbook workBook,byte[] rgb,HorizontalAlignment hAllign, VerticalAlignment vAllign, boolean isWrapText,boolean isBoldText,boolean isItalicText,int fontSize,String fontName) {
		CellStyle style = workBook.createCellStyle();
		//Setting Background color  
		//style.setFillBackgroundColor(IndexedColors.AQUA.getIndex());
		style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		if (style instanceof XSSFCellStyle) {
		   XSSFCellStyle xssfcellcolorstyle = (XSSFCellStyle)style;
		   xssfcellcolorstyle.setFillForegroundColor(new XSSFColor(rgb, null));
		}
		//style.setFillPattern(FillPatternType.ALT_BARS);
		style.setBorderBottom(BorderStyle.MEDIUM);
		style.setBorderTop(BorderStyle.MEDIUM);
		style.setBorderLeft(BorderStyle.MEDIUM);
		style.setBorderRight(BorderStyle.MEDIUM);
		style.setAlignment(hAllign);
		style.setVerticalAlignment(vAllign);
		style.setWrapText(isWrapText);
		
		Font font = workBook.createFont();
        //font.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
        font.setFontHeightInPoints((short)fontSize);  
        font.setFontName(fontName);  //"Times New Roman"
        
        font.setItalic(isItalicText); 
        font.setBold(isBoldText);
        // Applying font to the style  
        style.setFont(font); 
        
        return style;
	}
}

