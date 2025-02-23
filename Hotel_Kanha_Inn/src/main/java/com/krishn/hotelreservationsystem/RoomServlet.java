package com.krishn.hotelreservationsystem;

import java.io.IOException;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/RoomServlet")
public class RoomServlet extends HttpServlet{
		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// Get check-in and check-out dates from session
		    HttpSession session = request.getSession();
		    String checkIn = (String) session.getAttribute("check-in");
		    String checkOut = (String) session.getAttribute("check-out");

		    Connection conn = null;
		    PreparedStatement ps = null;
		    ResultSet rs = null;

		    // Store availability status for each room type
		    int singleRoom = 0, twinRoom = 0, doubleRoom = 0, deluxeRoom = 0, suiteRoom = 0, businessClass = 0;

		    try {
		        Class.forName("com.mysql.cj.jdbc.Driver");
		        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagementsystem","root","admin");

		        String sql = "SELECT room_type, COUNT(*) AS available_rooms FROM rooms " +
		                     "WHERE status = 'available' " +
		                     "AND room_id NOT IN (SELECT room_id FROM bookings WHERE ? < check_out AND ? > check_in) " +
		                     "GROUP BY room_type";

		        ps = conn.prepareStatement(sql);
		        ps.setString(1, checkIn);
		        ps.setString(2, checkOut);
		        rs = ps.executeQuery();

		        while (rs.next()) {
		            String roomType = rs.getString("room_type");
		            int availableRooms = rs.getInt("available_rooms");

		            if (roomType.equalsIgnoreCase("Single")) singleRoom = availableRooms;
		            else if (roomType.equalsIgnoreCase("Twin")) twinRoom = availableRooms;
		            else if (roomType.equalsIgnoreCase("Double")) doubleRoom = availableRooms;
		            else if (roomType.equalsIgnoreCase("Deluxe")) deluxeRoom = availableRooms;
		            else if (roomType.equalsIgnoreCase("Suite")) suiteRoom = availableRooms;
		            else if (roomType.equalsIgnoreCase("Business")) businessClass = availableRooms;
		        }
		        
		     // Store room availability data in session
	            session.setAttribute("singleRoom", singleRoom);
	            session.setAttribute("twinRoom", twinRoom);
	            session.setAttribute("doubleRoom", doubleRoom);
	            session.setAttribute("deluxeRoom", deluxeRoom);
	            session.setAttribute("suiteRoom", suiteRoom);
	            session.setAttribute("businessClass", businessClass);

	            // Redirect to room.jsp to display available rooms
	            response.sendRedirect("room.jsp");
	         
	            String uname = (String) session.getAttribute("username");
	    	    boolean isLoggedIn = (uname != null);
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        try{if (rs != null) rs.close();
		        if (ps != null) ps.close();
		        if (conn != null) conn.close();
		        }
		        catch(SQLException e) {
		        	e.printStackTrace();
		        }
		    }
		}
}
