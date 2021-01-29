<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>

<%
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
    String name="";		
    String id="";
    String password="";
    String mspassword="";
	String phone="";
    String bbt = "";
    request.setCharacterEncoding("utf-8");
    name=request.getParameter("name");
    id=request.getParameter("id");
	phone=request.getParameter("phone");
    password=request.getParameter("password");
    mspassword=request.getParameter("mspassword");
    bbt = request.getParameter("bankBelongto");
     
    if(id==null||password==null||id==""||password==""||bbt == "" || bbt == null)
    {
        out.print("<script>alert('请输入正确的ID和密码!');window.location.href='Registered.jsp?error=badid'</script>");
    }
    else
    {
        sql = "select * from account where idnumber="+"'"+id+"'";
        ResultSet rs = statement.executeQuery(sql);    
        if(rs.next())
        {
            out.print("<script>alert('该身份证号已被注册!');window.location.href='Registered.jsp?error=badid'</script>");
        }
        else
        {       
            if(password.equals(mspassword))
            {
                CallableStatement cstmt=connection.prepareCall("{call insert_account(?,?,?,?,?)}");

				cstmt.setString(1,id);
                cstmt.setString(3,password);
				cstmt.setString(2,phone);
				cstmt.setString(4,bbt);
				cstmt.setString(5,name);
				ResultSet rs2 = cstmt.executeQuery();
                out.print("<script>alert('注册成功!');window.location.href='index.jsp'</script>");
				cstmt.close();
            }          
            else
            {
                //out.print(mspassword);
                //out.print(password);
                out.print("<script>alert('请再次确认密码!');window.location.href='Registered.jsp?error=badid'</script>");
            }
        }     
        rs.close();  
        statement.close();
        connection.close(); 

    }
%>  