<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Processing</title>
</head>
<body>
<%
    // Retrieve form parameters
    String uname = request.getParameter("username");
    String pwd = request.getParameter("password");

    // Database connection details
    String jdbcUrl = "jdbc:mysql://localhost:3306/userprofile"; // Changed database name to userprofile
    String dbUser = "root"; // Replace with your database username
    String dbPassword = "admin"; // Replace with your database password
    String jdbcDriver = "com.mysql.cj.jdbc.Driver"; // Updated driver class name

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        // Load the JDBC driver
        Class.forName(jdbcDriver);

        // Establish the connection
        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

        // SQL query to validate user
        String mySqlQuery = "SELECT id, username FROM user WHERE username = ? AND password = ?"; // Changed table name to user
        ps = conn.prepareStatement(mySqlQuery);
        ps.setString(1, uname);
        ps.setString(2, pwd);

        // Execute the query
        rs = ps.executeQuery();

        if (rs.next()) {
            // Login successful
            String userId = rs.getString("id");
            String username = rs.getString("username");
            session.setAttribute("userId", userId); // Use the implicit session object provided by JSP
            session.setAttribute("username", username); // Store username in session
            out.println("<script type=\"text/javascript\">");
            out.println("alert(\"Login Successful\");");
            out.println("window.location.href = 'welcome.jsp';"); // Redirect to welcome page or desired page
            out.println("</script>");
        } else {
            // Login failed
            out.println("<script type=\"text/javascript\">");
            out.println("alert(\"Login failed. Please try again.\");");
            out.println("window.location.href = 'login.html';"); // Redirect back to login page
            out.println("</script>");
        }

        // Close the resources
        rs.close();
        ps.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (ps != null) try { ps.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
</body>
</html>
