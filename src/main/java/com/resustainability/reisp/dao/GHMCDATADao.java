package com.resustainability.reisp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.util.StringUtils;

import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.GHMC;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.RoleMapping;

@Repository
public class GHMCDATADao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;

	@Autowired
	DataSourceTransactionManager transactionManager;

	public List<GHMC> getGHMCDATAList(GHMC obj) throws SQLException {
		List<GHMC> menuList = null;
		try{  
			String qry = "select am.id,am.zoneCode,zoneName,circleName,wardName,am.circleCode,am.wardCode,am.inchargeName,am.inchargeMobileNo,am."
					+ "vehicleRegisterationNo,am.vehicleType,transferstationName,am.chasisNo,am.ownertype,am.operationType,am.driverName,am.driverMobileNo,am.landmarkName,am."
					+ "latitude,am.longitude,am.radiusInMtrs,am.transferstationCode,am.tS_LAT,am.tS_LONG,am.status,am.backgroundStatus,am."
					+ "remarks,am.createdBy,convert(varchar, am.createdDate, 0) as createdDate,am.reviewedBy,convert(varchar, am.reviewedDate, 0) as reviewedDate,"
					+ "am.approvedBy,convert(varchar, am.approvedDate, 0) as approvedDate,am.modifiedBy,am.modifiedDate"
					+ " from [asset_master] am "
					+ "left join zone z on am.zoneCode = z.zoneCode "
					+ "left join circle c on am.circleCode = c.circleCode "
					+ "left join ward w on am.wardCode = w.wardCode "
					+ "left join transferstations t on am.transferstationCode = t.transferstationCode order by am.createdDate desc ";
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<GHMC>(GHMC.class));
	        
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<GHMC> getZoneList(GHMC obj) throws SQLException {
		List<GHMC> menuList = null;
		try{  
			String qry = "select id,zoneCode,zoneName,zoneinchargeName,zoneinchargeMobileNo,alternateZoneinchargeName,alternateZoneinchargeMobileNo "
					+ " from [zone]  where status = 'Active'";
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<GHMC> getCircleList(GHMC obj) throws SQLException {
		List<GHMC> menuList = null;
		try{  
			String qry = "select id,circleCode,circleName,zoneCode,circleInchargeNmae,circleInchargeNo,alternateCircleInchargeNmae,alternateCircleInchargeNo,status "
					+ " from [circle] where status = 'Active' and zoneCode = "+obj.getZoneCode();
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<GHMC> getTransacxtionList(GHMC obj) throws SQLException {
		List<GHMC> menuList = null;
		try{  
			String qry = "select id,transferstationCode,transferstationName,circleCode,zoneCode,transferstationType,capacity,latitude,longitude,radiusInMtrs,status  "
					+ " from [transferstations] where status = 'Active' and circleCode = "+obj.getCircleCode()+" and zoneCode = "+obj.getZoneCode();
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<GHMC> getWardList(GHMC obj) throws SQLException {
		List<GHMC> menuList = null;
		try{  
			String qry = "select id,wardCode,wardName,circleCode,wardInchargeName,wardInchargeNo,alternateWardInchargeName,alternateWardInchargeNo,status "
					+ " from [ward] where status = 'Active' and circleCode = "+obj.getCircleCode();
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<GHMC> getVehicleList(GHMC obj) throws SQLException {
		List<GHMC> menuList = null;
		try{  
			String qry = "select distinct(vehicle_type) "
					+ " from [vehicle_type] ";
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<GHMC> getOwnerList(GHMC obj) throws SQLException {
		List<GHMC> menuList = null;
		try{  
			String qry = "select distinct(owner_type) "
					+ " from [owner_type] ";
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<GHMC> getOperationList(GHMC obj) throws SQLException {
		List<GHMC> menuList = null;
		try{  
			String qry = "select distinct(operation_type) "
					+ " from [operation_type] ";
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}


	public List<GHMC> getSFAList(GHMC obj) throws SQLException {	
		List<GHMC> menuList = null;
		try{  
			String qry = "select sfaCode,	sfa_name	,am.zoneCode,zoneName,circleName,wardName	,am.circleCode	,am.wardCode	,sfa_contactNo,	alternate_sfa	,alternate_sfa_no	,am.status "
					+ " from [sfa_master] am "
					+ "left join zone z on am.zoneCode = z.zoneCode "
					+ "left join circle c on am.circleCode = c.circleCode "
					+ "left join ward w on am.wardCode = w.wardCode  ";
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}
	
	public boolean addMasterData(GHMC obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [asset_master] (zoneCode,circleCode,wardCode,inchargeName,inchargeMobileNo,vehicleRegisterationNo,vehicleType,chasisNo,ownertype,"
					+ "operationType,driverName,driverMobileNo,landmarkName,latitude,longitude,radiusInMtrs,transferstationCode,status,backgroundStatus,remarks,"
					+ "createdBy,createdDate) "
					+ "VALUES "
					+ "(:zoneCode,:circleCode,:wardCode,:inchargeName,:inchargeMobileNo,:vehicleRegisterationNo,:vehicleType,:chasisNo,:ownertype,"
					+ ":operationType,:driverName,:driverMobileNo,:landmarkName,:latitude,:longitude,:radiusInMtrs,:transferstationCode,:status,:backgroundStatus,:remarks,"
					+ ":createdBy,getdate())";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		
			KeyHolder keyHolder = new GeneratedKeyHolder();
		    count = namedParamJdbcTemplate.update(insertQry, paramSource,keyHolder);
		    obj.setId_fk( String.valueOf(keyHolder.getKey().intValue()));
			String insertQry2 = "INSERT INTO [history_table] (zoneCode,id_fk,circleCode,wardCode,inchargeName,inchargeMobileNo,vehicleRegisterationNo,vehicleType,chasisNo,ownertype,"
					+ "operationType,driverName,driverMobileNo,landmarkName,latitude,longitude,radiusInMtrs,transferstationCode,status,backgroundStatus,remarks,"
					+ "createdBy,createdDate,server_date) "
					+ "VALUES "
					+ "(:zoneCode,:id_fk,:circleCode,:wardCode,:inchargeName,:inchargeMobileNo,:vehicleRegisterationNo,:vehicleType,:chasisNo,:ownertype,"
					+ ":operationType,:driverName,:driverMobileNo,:landmarkName,:latitude,:longitude,:radiusInMtrs,:transferstationCode,:status,:backgroundStatus,:remarks,"
					+ ":createdBy,getdate(),getdate())";
			paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry2, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public GHMC getMasterData(GHMC obj) throws Exception {
		GHMC ghmc = null;
		try {
			String qry = "select am.id,am.zoneCode,zoneName,circleName,wardName,am.circleCode,am.wardCode,am.inchargeName,am.inchargeMobileNo,am."
					+ "vehicleRegisterationNo,am.vehicleType,transferstationName,am.chasisNo,am.ownertype,am.operationType,am.driverName,am.driverMobileNo,am.landmarkName,am."
					+ "latitude,am.longitude,am.radiusInMtrs,am.transferstationCode,am.tS_LAT,am.tS_LONG,am.status,am.backgroundStatus,"
					+ "am.remarks,am.createdBy,convert(varchar, am.createdDate, 0) as createdDate,am.reviewedBy,convert(varchar, am.reviewedDate, 0) as reviewedDate,"
					+ "am.approvedBy,convert(varchar, am.approvedDate, 0) as approvedDate,am.modifiedBy,am.modifiedDate"
					+ " from [asset_master] am "
					+ "left join zone z on am.zoneCode = z.zoneCode "
					+ "left join circle c on am.circleCode = c.circleCode "
					+ "left join ward w on am.wardCode = w.wardCode "
					+ "left join transferstations t on am.transferstationCode = t.transferstationCode where am.id is not null ";
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				qry = qry + " and am.id = ? ";
				arrSize++;
			}
			qry = qry + "order by approvedDate desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				pValues[i++] = obj.getId();
			}
			ghmc = (GHMC)jdbcTemplate.queryForObject(qry, pValues, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return ghmc;
	}

	public boolean updateMasterData(GHMC obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			if("Reviewer".equalsIgnoreCase(obj.getRole())) {
			    String insertQry2 = "INSERT INTO [history_table] (zoneCode,id_fk,circleCode,wardCode,inchargeName,inchargeMobileNo,vehicleRegisterationNo,vehicleType,chasisNo,ownertype,"
						+ "operationType,driverName,driverMobileNo,landmarkName,latitude,longitude,radiusInMtrs,transferstationCode,status,backgroundStatus,remarks,"
						+ "createdBy,createdDate,reviewedBy,reviewedDate,server_date) "
						+ "VALUES "
						+ "(:zoneCode,:id_fk,:circleCode,:wardCode,:inchargeName,:inchargeMobileNo,:vehicleRegisterationNo,:vehicleType,:chasisNo,:ownertype,"
						+ ":operationType,:driverName,:driverMobileNo,:landmarkName,:latitude,:longitude,:radiusInMtrs,:transferstationCode,:status,:backgroundStatus,:remarks,"
						+ ":createdBy,:createdDate,:reviewedBy,getdate(),getdate())";
			    BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
			    count = namedParamJdbcTemplate.update(insertQry2, paramSource);
			    
			    String insertQry = "UPDATE [asset_master] "
						+ "set reviewedBy= :reviewedBy,reviewedDate= getdate()"
						+ "  where id = "+obj.getId();
				paramSource = new BeanPropertySqlParameterSource(obj);		 
			    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			    
			}else if("Approver".equalsIgnoreCase(obj.getRole())) {
				String insertQry = "UPDATE [asset_master]"
						+ "set zoneCode= :zoneCode,circleCode= :circleCode,wardCode= :wardCode,inchargeName= :inchargeName,inchargeMobileNo= :inchargeMobileNo,"
						+ "vehicleRegisterationNo= :vehicleRegisterationNo,vehicleType= :vehicleType,chasisNo= :chasisNo,ownertype= :ownertype,"
						+ "operationType= :operationType,driverName= :driverName,driverMobileNo= :driverMobileNo,landmarkName= :landmarkName,radiusInMtrs= :radiusInMtrs"
						+ ",transferstationCode= :transferstationCode,status= :status,backgroundStatus= :backgroundStatus,remarks= :remarks,"
						+ "approvedBy= :approvedBy,approvedDate= getdate()"
						+ "  where id = "+obj.getId();
				BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
			    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			    
			    String insertQry2 = "INSERT INTO [history_table] (zoneCode,id_fk,circleCode,wardCode,inchargeName,inchargeMobileNo,vehicleRegisterationNo,vehicleType,chasisNo,ownertype,"
						+ "operationType,driverName,driverMobileNo,landmarkName,latitude,longitude,radiusInMtrs,transferstationCode,status,backgroundStatus,remarks,"
						+ "createdBy,createdDate,reviewedBy,reviewedDate,approvedBy,approvedDate,server_date) "
						+ "VALUES "
						+ "(:zoneCode,:id_fk,:circleCode,:wardCode,:inchargeName,:inchargeMobileNo,:vehicleRegisterationNo,:vehicleType,:chasisNo,:ownertype,"
						+ ":operationType,:driverName,:driverMobileNo,:landmarkName,:latitude,:longitude,:radiusInMtrs,:transferstationCode,:status,:backgroundStatus,:remarks,"
						+ ":createdBy,:createdDate,:reviewedBy,:reviewedDate,:approvedBy,getdate(),getdate())";
			    paramSource = new BeanPropertySqlParameterSource(obj);		 
			    count = namedParamJdbcTemplate.update(insertQry2, paramSource);
			}
			
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public GHMC getMasterHistoryData(GHMC obj) throws Exception {
		GHMC ghmc = null;
		try {
			String qry = "select top (1) am.id,id_fk,am.zoneCode,zoneName,circleName,wardName,am.circleCode,am.wardCode,am.inchargeName,am.inchargeMobileNo,am."
					+ "vehicleRegisterationNo,am.vehicleType,transferstationName,am.chasisNo,am.ownertype,am.operationType,am.driverName,am.driverMobileNo,am.landmarkName,am."
					+ "latitude,am.longitude,am.radiusInMtrs,am.transferstationCode,am.tS_LAT,am.tS_LONG,am.status,am.backgroundStatus,"
					+ "am.remarks,am.createdBy,convert(varchar, am.createdDate, 0) as createdDate,am.reviewedBy,convert(varchar, am.reviewedDate, 0) as reviewedDate,"
					+ "am.approvedBy,convert(varchar, am.approvedDate, 0) as approvedDate,am.modifiedBy,am.modifiedDate"
					+ " from [history_table] am "
					+ "left join zone z on am.zoneCode = z.zoneCode "
					+ "left join circle c on am.circleCode = c.circleCode "
					+ "left join ward w on am.wardCode = w.wardCode "
					+ "left join transferstations t on am.transferstationCode = t.transferstationCode where am.id_fk is not null ";
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				qry = qry + " and am.id_fk = ? ";
				arrSize++;
			}
			qry = qry + "order by server_date desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				pValues[i++] = obj.getId();
			}
			ghmc = (GHMC)jdbcTemplate.queryForObject(qry, pValues, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return ghmc;
	}

	public boolean addSFAData(GHMC obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [sfa_master] "
					+ "(sfa_name,	zoneCode,	circleCode,	wardCode,	sfa_contactNo,	alternate_sfa,	alternate_sfa_no,	status,created_by,created_date) "
					+ "VALUES "
					+ "(:sfa_name,	:zoneCode,	:circleCode,	:wardCode,	:sfa_contactNo,	:alternate_sfa,	:alternate_sfa_no,	:status, :created_by,getdate())";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		
			KeyHolder keyHolder = new GeneratedKeyHolder();
		    count = namedParamJdbcTemplate.update(insertQry, paramSource,keyHolder);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public GHMC getSFAMasterData(GHMC obj) throws Exception {
		GHMC ghmc = null;
		try {
			String qry = "select top (1)   am.sfaCode,sfa_name,am.zoneCode,am.circleCode,am.wardCode,zoneName,circleName,wardName,sfa_contactNo,alternate_sfa,"
					+ "alternate_sfa_no,am.status,am.created_by,am.created_date,am.modified_by,am.modified_date "
					+ " from sfa_master am "
					+ "left join zone z on am.zoneCode = z.zoneCode "
					+ "left join circle c on am.circleCode = c.circleCode "
					+ "left join ward w on am.wardCode = w.wardCode  where am.sfaCode is not null ";
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				qry = qry + " and am.sfaCode = ? ";
				arrSize++;
			}
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				pValues[i++] = obj.getId();
			}
			ghmc = (GHMC)jdbcTemplate.queryForObject(qry, pValues, new BeanPropertyRowMapper<GHMC>(GHMC.class));
			
		}catch(Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return ghmc;
	}

	public boolean updateSFAMasterData(GHMC obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			    String insertQry2 = "UPDATE [sfa_master] set"
			    		+ " sfa_name= :sfa_name,	zoneCode= :zoneCode,	circleCode= :circleCode,	"
			    		+ "wardCode= :wardCode,	sfa_contactNo= :sfa_contactNo,	alternate_sfa= :alternate_sfa,	"
			    		+ "alternate_sfa_no= :alternate_sfa_no,	status= :status,modified_by=:modified_by,modified_date= getdate() "
						+"where sfaCode = :sfaCode ";
			    BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
			    count = namedParamJdbcTemplate.update(insertQry2, paramSource);
			    
			 
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	
}
