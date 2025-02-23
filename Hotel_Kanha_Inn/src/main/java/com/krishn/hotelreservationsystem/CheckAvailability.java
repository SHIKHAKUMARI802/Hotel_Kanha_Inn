package com.krishn.hotelreservationsystem;
import java.io.IOException;
import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
@WebServlet("/CheckAvailability")
public class CheckAvailability extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// Get user input from request
        String checkIn = request.getParameter("check-in");
        String checkOut = request.getParameter("check-out");
        String adults = request.getParameter("adult");
        String children = request.getParameter("child");
        
        // If session data is missing, redirect to homepage
        if (checkIn == null || checkOut == null || adults==null || children==null) {
            response.sendRedirect("./index.jsp");
            return;
        }


        // Store data in session
        HttpSession session = request.getSession();
        session.setAttribute("check-in", checkIn);
        session.setAttribute("check-out", checkOut);
        session.setAttribute("adult", adults);
        session.setAttribute("child", children);

        Connection con=null;
        PreparedStatement pstmt=null;
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagementsystem","root","admin");
	        String query="UPDATE rooms SET status = 'available', check_in_date= NULL, check_out_date = NULL WHERE check_out_date < CURDATE()";
	        pstmt = con.prepareStatement(query);
            pstmt.executeUpdate();
        		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
        // Forward request to RoomServlet for further processing
        RequestDispatcher dispatcher = request.getRequestDispatcher("RoomServlet");
        dispatcher.forward(request, response);
   	}
}
