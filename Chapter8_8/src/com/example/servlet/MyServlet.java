package com.example.servlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.HashMap;

public class MyServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException,IOException{
			// create a HashMap object key String and value String:
		 	HashMap<String, String> musicMap = new HashMap<String, String>();
		 	// put in this hash map all elements:
	        musicMap.put("Ambient", "Zero 7");
	        musicMap.put("Surf", "Tahiti");
	        musicMap.put("DJ", "BT");
	        musicMap.put("Indie", "Travis");
	        // create a String array object and put some strings elements:
	        String[] musicArray = new String[]{"Ambient", "Surf", "DJ", "Indie"};
	        // create a hash map object and put all wanted elements:
	        HashMap<String, String> charMap = new HashMap<String, String>();
	        charMap.put("ch_left", "&lt"); // this will represent  character <
	        charMap.put("ch_right", "&gt"); // this will represent character >
	        
	        // save all this to request scope attributes:
	        request.setAttribute("characterMap", charMap);
	        request.setAttribute("musicMap", musicMap);
	        request.setAttribute("MusicType", musicArray);
	        // this just we created now String key Genre to String value Ambient its request scope simple attribute:
	        request.setAttribute("Genre", "Ambient");
	            
	        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Test.jsp");
	        requestDispatcher.forward(request, response);
	}
}
