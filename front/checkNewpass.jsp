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
    String id="";
	String oldpass="";
    String password="";
    String mspassword="";
    request.setCharacterEncoding("utf-8");
    id=request.getParameter("id");
	oldpass=request.getParameter("oldpass");
    password=request.getParameter("password");
    mspassword=request.getParameter("mspassword");
     
    if(id==null||oldpass==null||password==null||id==""||password==""||oldpass=="")
    {
        out.print("<script>alert('请输入正确的密码!');window.location.href='changepassword.jsp?error=badid'</script>");
    }
    else
    {
        sql = "select password from account where idnumber="+"'"+id+"'";
        ResultSet rs = statement.executeQuery(sql);   
		rs.next();
        if(!oldpass.equals(rs.getString(1)))
        {
            //out.print("<script>alert('原密码不正确!');window.location.href='changepassword.jsp?error=badid'</script>");
        }
        else
        {       
            if(password.equals(mspassword))
            {
                CallableStatement cstmt=connection.prepareCall("{call update_password(?,?)}");
				cstmt.setString(1,id);
				cstmt.setString(2,password);
				ResultSet rs2 = cstmt.executeQuery();
                out.print("<script>alert('修改成功!');window.location.href='index.jsp'</script>");
				cstmt.close();
				rs2.close();
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