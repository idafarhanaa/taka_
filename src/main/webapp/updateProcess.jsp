<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tiedye";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
	String custID = request.getParameter("custID");
	String custPwd=request.getParameter("custPwd");
	String custPhoneNum=request.getParameter("custPhoneNum");
	String custEmail = request.getParameter("custEmail");
	String custUsername=request.getParameter("custUsername");
	if(custID != null){
		Connection con = null;
		PreparedStatement ps = null;
		int personID = Integer.parseInt(custID);
		try{
			Class.forName(driverName);
			con = DriverManager.getConnection(url,user,psw);
			String sql="Update customers set custID=?,custUsername=?,custPhoneNum=?,custPwd=?,custEmail=? where custID="+custID;
			ps = con.prepareStatement(sql);
			ps.setString(1, custID);
			ps.setString(2, custUsername);
			ps.setString(3, custPhoneNum);
			ps.setString(4, custPwd);
			ps.setString(5, custEmail);
			int i = ps.executeUpdate();
			if(i > 0){
		    response.sendRedirect("displayUpdate.jsp");
		    //out.print("Record Updated Successfully");
			}
			else{
				out.print("There is a problem in updating Record.");
			}
		}
		catch(SQLException sql){
			request.setAttribute("error", sql);
			out.println(sql);
		}
	}
%>