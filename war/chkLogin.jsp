<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%
    String userName = request.getParameter("username");
    String pwd = request.getParameter("password");
    
    //Query DB
    String uname = "krit";
    String pass = "123";
    String firstname = "กฤษติยา";
    
        
    if (uname.equals(userName) && pass.equals(pwd)){
    	out.println("<h2>จังหวัดประจวบคีรีขันธ์</h2>");
    	session.setAttribute("username_ses",uname);
    	session.setAttribute("firstname_ses",firstname);
    	response.sendRedirect("index.jsp");
    } else {
        out.println("<h1>กรุณาลองใหม่อีกครั้ง</h1>");
    }
    
%>    
