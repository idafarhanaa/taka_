<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
 
		String custPwd = request.getParameter("pass");
		String custPhoneNum = request.getParameter("phoneNumber");
        String custEmail = request.getParameter("email");
		String custUsername = request.getParameter("username");

		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/tiedye","root","");
			//PreparedStatement pst = con.prepareStatement("insert into customers(custPwd, custPhoneNum, custEmail, custUsername)values(?,?,?,?)");
			Statement stmt=con.createStatement(); 
			String sql = "insert into customers(custPwd, custPhoneNum, custEmail, custUsername) values('"+custPwd+"','"+custPhoneNum+"','"+custEmail+"','"+custUsername+"')";
		
			/*pst.setString(1, custPwd);
			pst.setString(2, custPhoneNum);
			pst.setString(3, custEmail);
			pst.setString(4, custUsername);
			pst.executeUpdate();*/
			
			int x = stmt.executeUpdate(sql);
			if(x>0){
				response.sendRedirect("homepage.jsp");
			}else{
				request.setAttribute("error", "Error encountered. Try Again");
				RequestDispatcher rd = request.getRequestDispatcher("signUp.jsp");
				rd.include(request, response);
			}
			con.close();
		}catch(Exception e){
			out.println(e);
		}
        %>