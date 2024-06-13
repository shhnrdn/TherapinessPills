<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.io.StringWriter" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register Processing</title>
</head>
<body>
<%
    String email = request.getParameter("email");
    String uname = request.getParameter("username");
    String pwd = request.getParameter("password");
    String confirmPwd = request.getParameter("confirm_password");

    if (!pwd.equals(confirmPwd)) {
        out.println("<script type=\"text/javascript\">");
        out.println("alert(\"Passwords do not match. Please try again.\");");
        out.println("window.location.href = 'index.html';");
        out.println("</script>");
    } else {
        // Database connection details
        String jdbcUrl = "jdbc:mysql://localhost:3306/userprofile"; 
        String dbUser = "root"; 
        String dbPassword = "admin"; 
        String jdbcDriver = "com.mysql.cj.jdbc.Driver"; 

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            // Load the JDBC driver
            Class.forName(jdbcDriver);

            // Establish the connection
            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // SQL query to insert new user
            String mySqlQuery = "INSERT INTO user (email, username, password) VALUES (?, ?, ?)";
            ps = conn.prepareStatement(mySqlQuery);
            ps.setString(1, email);
            ps.setString(2, uname);
            ps.setString(3, pwd);

            // Execute the query
            int row = ps.executeUpdate();

            if (row > 0) {
                // Registration successful
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Successfully Signed Up\");");
                out.println("window.location.href = 'login.html';");
                out.println("</script>");
            }

            // Close the resources
            ps.close();
            conn.close();
        } catch (Exception e) {
            // Convert the stack trace to a string
            StringWriter sw = new StringWriter();
            PrintWriter pw = new PrintWriter(sw);
            e.printStackTrace(pw);
            out.println("<pre>" + sw.toString() + "</pre>");
        } finally {
            if (ps != null) try { ps.close(); } catch (SQLException e) {
                // Convert the stack trace to a string
                StringWriter sw = new StringWriter();
                PrintWriter pw = new PrintWriter(sw);
                e.printStackTrace(pw);
                out.println("<pre>" + sw.toString() + "</pre>");
            }
            if (conn != null) try { conn.close(); } catch (SQLException e) {
                // Convert the stack trace to a string
                StringWriter sw = new StringWriter();
                PrintWriter pw = new PrintWriter(sw);
                e.printStackTrace(pw);
                out.println("<pre>" + sw.toString() + "</pre>");
            }
        }
    }
%>
</body>
</html>