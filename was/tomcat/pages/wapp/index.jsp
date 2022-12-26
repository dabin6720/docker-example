<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DB Connection Test</title>
</head>
<body>
<%
     String DB_URL = "jdbc:mysql://{CONTAINER_DB_IP}:3306/{DB_DATABASE_NAME}?serverTimezone=UTC&autoReconnect=True&allowPublicKeyRetrieval=true&useSSL=false"";
     String DB_USER = "{DB_USER_ID}";
     String DB_PASSWORD= "{DB_USER_PASSWORD}";

     Connection conn;
     Statement stmt;

     try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      //com.mysql.cj.jdbc.Driver mysql 8 
      conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
      stmt = conn.createStatement();
      conn.close();
      out.println("MySql jdbc test: connect ok!!");
     } catch(Exception e) {
	     out.println(e.getMessage());
     }
%>
</body>
</html>
