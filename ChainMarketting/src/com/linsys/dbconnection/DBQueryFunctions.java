package com.linsys.dbconnection;

import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.linsys.model.CustomerModel;
import com.linsys.model.PUC_Model_Data;
import com.linsys.model.ProductModel;
import com.linsys.utility.Constants;

public class DBQueryFunctions {
	private static Connection connect = null;
	private static ResultSet resultSet = null;  
	private static CallableStatement callstmt = null;
	
	
	public static List<PUC_Model_Data> get_pick_up_centre_list_details(){
		List<PUC_Model_Data> model = new ArrayList<>();
		try{
			connect = DBConnection.getConnection();
			callstmt = (CallableStatement)connect.prepareCall(Constants.PUC_LIST_DETAILS);
			boolean hadResults = callstmt.execute();
			while (hadResults) {
		        resultSet = callstmt.getResultSet();
		        while (resultSet.next()) {
		        	PUC_Model_Data list = new PUC_Model_Data();
		        	list.setId(resultSet.getInt(1));
		        	list.setPucToken(resultSet.getString(2));
		        	list.setName(resultSet.getString(3));
		        	list.setEmailID(resultSet.getString(4));
		        	list.setMobileNumber(resultSet.getString(5));
		        	list.setAadharID(resultSet.getString(6));
		        	list.setCompanyName(resultSet.getString(7));
		        	list.setOfficeMobile1(resultSet.getString(8));
		        	list.setOfficeMobile2(resultSet.getString(9));
		        	list.setAddress(resultSet.getString(10));
		        	list.setCountry(resultSet.getString(11));
		        	list.setState(resultSet.getString(12));
		        	list.setLandMark(resultSet.getString(13));
		        	list.setPincode(resultSet.getInt(14));
		        	list.setEntryDate(resultSet.getString(15));
		        	model.add(list);
		        }
		        
		        hadResults = callstmt.getMoreResults();
		    }
			
			return model;
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return model;
	}
	
	
	
	
	/*
	 * Customer registeration
	 */
	public static String post_customer_details(JSONObject json){
		try{
			connect = DBConnection.getConnection();
			callstmt = (CallableStatement)connect.prepareCall("{call db_mlm.sp_customer_registeration(?, ?)}");
			callstmt.setObject(1, json.toString());
			callstmt.registerOutParameter(2, java.sql.Types.JAVA_OBJECT);
			callstmt.execute();
			
			return callstmt.getString(2);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return null;
	}

	
	/*
	 * Add PUC details to the system
	 */
	public static String post_puc_details(JSONObject json){
		try{
			connect = DBConnection.getConnection();
			callstmt = (CallableStatement)connect.prepareCall("{call db_mlm.sp_pick_up_centre_insert(?, ?)}");
			callstmt.setObject(1, json.toString());
			callstmt.registerOutParameter(2, java.sql.Types.JAVA_OBJECT);
			callstmt.execute();
			
			return callstmt.getString(2);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return null;
	}
	

	/*
	 * Insert product 
	 */
	public static String post_product(JSONObject json, InputStream stream){
		try{
			connect = DBConnection.getConnection();
			callstmt = (CallableStatement)connect.prepareCall("{call sp_product_insert(?, ?, ?)}");
			callstmt.setObject(1, json.toString());
			callstmt.setBinaryStream(2, stream);
			callstmt.registerOutParameter(3, java.sql.Types.JAVA_OBJECT);
			callstmt.execute();
			
			return callstmt.getString(3);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return null;
	}
	
	
	/*
	 * Get the list of customers 
	 */
	public static List<CustomerModel> getCustomerList(){
		List<CustomerModel> model = new ArrayList<>();
		try{
			connect = DBConnection.getConnection();
			callstmt = (CallableStatement)connect.prepareCall("{call db_mlm.sp_get_customer_list()}");
			resultSet = callstmt.executeQuery();
			while (resultSet.next()) {
				CustomerModel list = new CustomerModel();
				list.setCustomerID(resultSet.getInt(1));
				list.setToken(resultSet.getString(2));
				list.setCustomerName(resultSet.getString(3));
				list.setMobileNumber(resultSet.getString(4));
				list.setEmailID(resultSet.getString(5));
				list.setAddedOn(resultSet.getString(6));
				model.add(list);
			}
			
			return model;
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return model;
	}
	
	
	
	/*
	 * Upload images
	 */
	public static int upload_image(InputStream stream){
		try{
			connect = DBConnection.getConnection();
			callstmt = (CallableStatement)connect.prepareCall("{call sp_upload_image(?, ?)}");
			callstmt.setBinaryStream(1, stream);
			callstmt.registerOutParameter(2, java.sql.Types.INTEGER);
			callstmt.execute();
			return callstmt.getInt(2);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	
	/*
	 * Get all products
	 */
	public static List<ProductModel> getAllProducts(){
		List<ProductModel> list = new ArrayList<>();
		try{
			connect = DBConnection.getConnection();
			callstmt = (CallableStatement)connect.prepareCall("{call sp_get_all_products()}");
			resultSet = callstmt.executeQuery();
			while (resultSet.next()) {
				ProductModel model = new ProductModel();
				model.setProductID(resultSet.getInt(1));
				model.setProductTag(resultSet.getString(2));
				model.setProductName(resultSet.getString(3));
				model.setImageFile(resultSet.getBlob(4));
				model.setDescription(resultSet.getString(5));
				model.setProductType(resultSet.getString(6));
				model.setMFGDate(resultSet.getString(7));
				model.setEXPDate(resultSet.getString(8));
				model.setCostPrice(resultSet.getString(9));
				model.setSellingPrice(resultSet.getString(10));
				model.setAddedOn(resultSet.getString(11));
				list.add(model);
			}
			
			return list;
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return list;
	}
	
	
	/*
	 * Get Profile Details
	 */
	public static String GetCustomerProfileDetails(JSONObject json){
		try{
			connect = DBConnection.getConnection();
			callstmt = (CallableStatement)connect.prepareCall("{call sp_get_profile_details(?, ?)}");
			callstmt.setObject(1, json.toString());
			callstmt.registerOutParameter(2, java.sql.Types.JAVA_OBJECT);
			callstmt.execute();
			
			return callstmt.getString(2);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return null;
	}
	
	
	/*
	 * Login details of user
	 */
	public static String validateLogin(JSONObject json){
		try{
			connect = DBConnection.getConnection();
			callstmt = (CallableStatement)connect.prepareCall("call sp_validate_login(?, ?)");
			callstmt.setObject(1, json.toString());
			callstmt.registerOutParameter(2, java.sql.Types.JAVA_OBJECT);
			callstmt.execute();
			
			return callstmt.getString(2);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return null;
	}
	
	
	
	/*
	 * Close all the open connections
	 */
	private static void close() {
		if (resultSet != null) {
			try{
				resultSet.close();
			}catch (Exception e) {
				e.printStackTrace();
				resultSet = null;
			}
			
		}
		
		
		if (connect != null) {
			try{
				connect.close();
			}catch (Exception e) {
				e.printStackTrace();
				connect = null;
			}
			
		}
		
		
		if (callstmt != null) {
			try{
				callstmt.close();
			}catch (Exception e) {
				e.printStackTrace();
				callstmt = null;
			}
		}
	}
}
