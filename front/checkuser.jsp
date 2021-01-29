<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%  
    String id=request.getParameter("userid");
    String pwd=request.getParameter("password");
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
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection connection = DriverManager.getConnection(url);  			
    CallableStatement cstmt=connection.prepareCall("{call comfirm_pwd(?)}");
	cstmt.setString(1,id);
    ResultSet rs = cstmt.executeQuery();    
    if(rs.next())
    {
        String rel_pwd = rs.getString(1);
        if(rel_pwd.equals(pwd))
        {
            application.setAttribute("userid",id);
            application.setAttribute("username",rs.getString(2));
            out.print("<script>alert('登录成功!');window.location.href='MyItineraries.jsp'</script>");
        }          
        else
        {
           out.print("<script>alert('密码错误!');window.location.href='index.jsp'</script>");
        }
    }
    else
    {
        //alert("该用户不存在");
         out.print("<script>alert('该用户不存在!');window.location.href='index.jsp'</script>");
        rs.close();  
        cstmt.close();  
        connection.close(); 
    }     
%>  