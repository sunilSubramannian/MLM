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

import com.linsys.dbconnection.DBQueryFunctions;

/**
 * Servlet implementation class UploadImage
 */
@WebServlet("/UploadImage")
@MultipartConfig(maxFileSize = 16177215)
public class UploadImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public UploadImage() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			 InputStream inputStream = null; 
				String fileName = null; double fileSize = 0.0;
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
		        
		        int image_id = DBQueryFunctions.upload_image(inputStream);
		        response.setContentType("text/plain");
		        response.getWriter().write(String.valueOf(image_id));
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
