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
 * Servlet implementation class validate_login
 */
@WebServlet("/validate_login")
public class validate_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public validate_login() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			JSONObject json = new JSONObject();
			json.put("username", username);
			json.put("password", password);
			String responseJSON = DBQueryFunctions.validateLogin(json);
			
			JSONObject object = new JSONObject(responseJSON);
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
