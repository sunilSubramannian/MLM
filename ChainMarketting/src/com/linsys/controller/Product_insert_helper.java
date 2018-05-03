package com.linsys.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.json.JSONObject;

import com.linsys.dbconnection.DBQueryFunctions;

/**
 * Servlet implementation class Product_insert_helper
 */
@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/Product_insert_helper")
public class Product_insert_helper extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Product_insert_helper() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			System.out.println("---->>> reacheed here");
			response.setContentType("text/plain");
			InputStream inputStream = null; 
			String fileName = null,imageStr = null; double fileSize = 0.0;
	        Part filePart = request.getPart("product_image");
	        System.out.println("--->>Name:: "+filePart.getName());
	        if (filePart != null) {
	        	fileName = filePart.getContentType();
	        	fileSize = filePart.getSize();
	        	System.out.println("--->Image size: "+fileSize);
	            inputStream = filePart.getInputStream();
	            
	           /* byte[] imageBytes = new byte[(int)fileSize];
	            inputStream.read(imageBytes, 0, imageBytes.length);
	            inputStream.close();
	            imageStr = Base64.getEncoder().encodeToString(imageBytes);*/
	        }
			String[] k = {"product_tag","product_name","product_desc","product_type",
					"product_mfd","product_exp","product_original_price","product_selling_price"};
			JSONObject object = new JSONObject();
			for(int i=0;i<k.length;i++){
				object.put(k[i], request.getParameter(k[i]));
			}
			
			String responseJSON = DBQueryFunctions.post_product(object, inputStream);
			System.out.println("---->>>"+responseJSON);
		
			
			response.setContentType("text/plain");
			response.getWriter().write(responseJSON);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
