package com.linsys.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.linsys.dbconnection.DBQueryFunctions;

/**
 * Servlet implementation class Customer_registeration_helper
 */
@WebServlet("/Customer_registeration_helper")
public class Customer_registeration_helper extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Customer_registeration_helper() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String customer_name = request.getParameter("customer_name");
			String mobile_number = request.getParameter("mobile_number");
			String aadhar_id = request.getParameter("aadhar_id");
			String email_id = request.getParameter("email_id");
			String c_addr1 = request.getParameter("c_addr1");
			String c_addr2 = request.getParameter("c_addr2");
			String c_country = request.getParameter("c_country");
			String c_state = request.getParameter("c_state");
			String c_landmark = request.getParameter("c_landmark");
			String c_pincode = request.getParameter("c_pincode");
			
			
			String p_addr1 = request.getParameter("p_addr1");
			String p_addr2 = request.getParameter("p_addr2");
			String p_country = request.getParameter("p_country");
			String p_state = request.getParameter("p_state");
			String p_landmark = request.getParameter("p_landmark");
			String p_pincode = request.getParameter("p_pincode");
			String bank_name = request.getParameter("bank_name");
			String bank_branch = request.getParameter("bank_branch");
			String bank_account_no = request.getParameter("bank_account_no");
			String bank_ifsc = request.getParameter("bank_ifsc");
			String epassword = request.getParameter("epassword");
			String ref_code = request.getParameter("ref_code");
			
			
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("cus_name", customer_name); 
			jsonObject.put("cus_aadhar", aadhar_id);
			jsonObject.put("cus_mobile", mobile_number); 
			jsonObject.put("cus_email", email_id);
			jsonObject.put("cus_caddr1", c_addr1); 
			jsonObject.put("cus_caddr2", c_addr2);
			jsonObject.put("cus_c_country", c_country);
			jsonObject.put("cus_c_state", c_state);
			jsonObject.put("cus_c_landmark", c_landmark);
			jsonObject.put("cus_c_pincode", c_pincode);
			jsonObject.put("cus_paddr1", p_addr1);
			jsonObject.put("cus_paddr2", p_addr2);
			jsonObject.put("cus_p_country", p_country);
			jsonObject.put("cus_p_state", p_state);
			jsonObject.put("cus_p_landmark", p_landmark);
			jsonObject.put("cus_p_pincode", p_pincode);
			jsonObject.put("cus_bank_name", bank_name);
			jsonObject.put("cus_bank_ifsc", bank_ifsc);
			jsonObject.put("cus_bank_branch", bank_branch);
			jsonObject.put("cus_account_number", bank_account_no);
			jsonObject.put("cus_refferal_code", ref_code);
			jsonObject.put("password", epassword);
			
			String responseJson = DBQueryFunctions.post_customer_details(jsonObject);
			System.out.println("------>>>Reg: "+responseJson);
			
			response.setContentType("text/plain");
			response.getWriter().write(responseJson);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
