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
 * Servlet implementation class PUC_registeration_helper
 */
@WebServlet("/PUC_registeration_helper")
public class PUC_registeration_helper extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PUC_registeration_helper() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String[] keylist = {"owner_name","p_email_id","p_aadhar_id","p_mobile_number","company_name",
					"cm_mobile_no1","cm_mobile_no2","cm_addr","cm_country","cm_state","cm_landmark","cm_pincode","password"};
			JSONObject object = new JSONObject();
			for(int i=0;i<keylist.length;i++){
				object.put(keylist[i], request.getParameter(keylist[i]));
			}
			
			String responseJSON = DBQueryFunctions.post_puc_details(object);
			System.out.println("PUC------>>>"+responseJSON);
			response.setContentType("text/plain");
			response.getWriter().write(responseJSON);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
