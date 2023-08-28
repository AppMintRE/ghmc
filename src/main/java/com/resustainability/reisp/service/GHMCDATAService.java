package com.resustainability.reisp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.GHMCDATADao;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.GHMC;
import com.resustainability.reisp.model.RoleMapping;

@Service
public class GHMCDATAService {

	@Autowired
	GHMCDATADao dao;

	public List<GHMC> getGHMCDATAList(GHMC obj) throws Exception{
		return dao.getGHMCDATAList(obj);
	}

	public List<GHMC> getZoneList(GHMC obj) throws Exception{
		return dao.getZoneList(obj);
	}

	public List<GHMC> getCircleList(GHMC obj) throws Exception{
		return dao.getCircleList(obj);
	}

	public List<GHMC> getWardList(GHMC obj) throws Exception{
		return dao.getWardList(obj);
	}

	public List<GHMC> getTransacxtionList(GHMC obj)  throws Exception{
		return dao.getTransacxtionList(obj);
	}

	public List<GHMC> getVehicleList(GHMC obj) throws Exception{
		return dao.getVehicleList(obj);
	}

	public List<GHMC> getOwnerList(GHMC obj)  throws Exception{
		return dao.getOwnerList(obj);
	}

	public List<GHMC> getOperationList(GHMC obj)  throws Exception{
		return dao.getOperationList(obj);
	}

	public boolean addMasterData(GHMC obj)  throws Exception{
		return dao.addMasterData(obj);
	}

	public GHMC getMasterData(GHMC obj)   throws Exception{
		return dao.getMasterData(obj);
	}

	public boolean updateMasterData(GHMC obj)  throws Exception{
		return dao.updateMasterData(obj);
	}

	public GHMC getMasterHistoryData(GHMC obj)  throws Exception{
		return dao.getMasterHistoryData(obj);
	}

	public List<GHMC> getSFAList(GHMC obj)  throws Exception{
		return dao.getSFAList(obj);
	}

	public boolean addSFAData(GHMC obj)  throws Exception{
		return dao.addSFAData(obj);
	}

	public GHMC getSFAMasterData(GHMC obj) throws Exception{
		return dao.getSFAMasterData(obj);
	}

	public boolean updateSFAMasterData(GHMC obj) throws Exception{
		return dao.updateSFAMasterData(obj);
	}
	
	
	
}
