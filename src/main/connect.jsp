<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
    Connection connection = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://dsas.cfgeo8iwssed.ap-south-1.rds.amazonaws.com:3306/dsas", "root", "root1234");
        if (connection == null) {
            throw new Exception("Failed to make connection!");
        }
        application.setAttribute("dbConnection", connection);
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
        e.printStackTrace();
    }
%>