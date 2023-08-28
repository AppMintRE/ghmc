package com.resustainability.reisp.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.service.BrainBoxService;


@Controller
public class Schedular {
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    } 
	public static Logger logger = Logger.getLogger(Schedular.class);
	
	@Autowired
	LoginController loginController;
	

	@Autowired
	BrainBoxService service;
	
	@Autowired
	
	@Value("${common.error.message}")
	public String commonError;
	
	@Value("${run.cron.jobs}")
	public boolean is_cron_jobs_enabled;
	
	@Value("${run.cron.jobs.in.qa}")
	public boolean is_cron_jobs_enabled_in_qa;
	
	/**********************************************************************************/
	
	/*
	 * @Scheduled(cron = "${cron.expression.user.login.timeout}") public void
	 * userLoginTimeout(){ if(is_cron_jobs_enabled || is_cron_jobs_enabled_in_qa) {
	 * try { System.out.println("cronJob Called!!!!"); } catch (Exception e) {
	 * e.printStackTrace(); logger.error("userLoginTimeout() : "+e.getMessage()); }
	 * } }
	 */
	/**********************************************************************************/	
	@Scheduled(cron = "${cron.expression.daily.bb.alert}")
	public void userLoginTimeout(){	
		if(is_cron_jobs_enabled || is_cron_jobs_enabled_in_qa) {
		     logger.error("userLoginTimeout : Method executed every day. Current time is :"+ new Date());	    
		     try {
		    	 System.out.println("cronJob egegeg!!!!"); 
		    	 boolean flag = true;
		    		List<BrainBox>  list = service.getBBListAlert();
		    		System.out.println(list);
		    		 if(is_cron_jobs_enabled || is_cron_jobs_enabled_in_qa) {
		    			 System.out.println("cronJob wwwwwwwwwwwwwwwwwwwwwwwwwwwwww!!!!"); 
					    	 //service.getIRMListAlert();
							logger.error("getIRMListAlert >> Sent mails : "+ flag); 
				    	}
			 } catch (Exception e) {
				 e.printStackTrace();
				logger.error("userLoginTimeout() : "+e.getMessage());
			 }
		}
	}
	
	@Scheduled(cron = "${cron.expression.bb.moonthly.alerts}")
	public void monthlyAlerts(){	
		if(is_cron_jobs_enabled || is_cron_jobs_enabled_in_qa) {
		     logger.error("userLoginTimeout : Method executed every day. Current time is :"+ new Date());	    
		     try {
		    	 System.out.println("cronJob egegeg!!!!"); 
		    	 boolean flag = true;
		    		List<BrainBox>  list = service.getBBListAlertMonthly();
		    		System.out.println(list);
		    		 if(is_cron_jobs_enabled || is_cron_jobs_enabled_in_qa) {
		    			 System.out.println("cronJob wwwwwwwwwwwwwwwwwwwwwwwwwwwwww!!!!"); 
					    	 //service.getIRMListAlert();
							logger.error("getIRMListAlert >> Sent mails : "+ flag); 
				    	}
			 } catch (Exception e) {
				 e.printStackTrace();
				logger.error("monthlyAlerts() : "+e.getMessage());
			 }
		}
	}

}
