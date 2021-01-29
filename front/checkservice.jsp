<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    Date date = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
    String sql;
    //驱动程序名
    String driverName = "com.mysql.jdbc.Driver";
    //数据库用户名
    String userName = "root";
    //密码
    String userPasswd = "wyh77598.";
    //端口号
    int port = 3306;
    //数据库名
    String dbName = "Bank";
    //表名
    String tableName = "account";
    String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd;
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(url);
    Statement statement = connection.createStatement();
    String fqid = (String)application.getAttribute("userid");
    String skid = request.getParameter("skid");
    String amt = request.getParameter("amount");
    CallableStatement cstmt=connection.prepareCall("{call service_commit(?,?,?,?)}");
    cstmt.setString(1,fqid);
    cstmt.setString(2,skid);
    cstmt.setString(3,amt);
    cstmt.setString(4, String.valueOf(formatter.format(date)));
    ResultSet rs = cstmt.executeQuery();
    out.print("<script>alert('转账成功!');window.location.href='MyItineraries.jsp'</script>");
    cstmt.close();
    rs.close();
    statement.close();
    connection.close();
    %>