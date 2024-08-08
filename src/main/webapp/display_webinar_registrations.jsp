<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CrackIt Academy</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            color: #333;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .button-container {
            text-align: center;
            margin: 20px 0;
        }
        .button-container button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .button-container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Webinar Registrations</h1>
    <table>
        <tr>
            <th>Email</th>
            <th>Name</th>
            <th>Mobile</th>
            <th>Exam Year</th>
            <th>Exam</th>
            <th>State</th>
            <th>Issue</th>
        </tr>
        <%
            String url = "jdbc:mysql://localhost:3306/academy";
            String user = "root"; 
            String password = "password@9#9"; 
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);
                stmt = conn.createStatement();
                String query = "SELECT * FROM webinarform";
                rs = stmt.executeQuery(query);
                
                while (rs.next()) {
                    String email = rs.getString("email");
                    String name = rs.getString("name");
                    String mobile = rs.getString("mobile");
                    String year = rs.getString("yearOfupsc");
                    String exam = rs.getString("exam");
                    String state = rs.getString("state");
                    String issue = rs.getString("issue");
        %>
                    <tr>
                        <td><%= email %></td>
                        <td><%= name %></td>
                        <td><%= mobile %></td>
                        <td><%= year %></td>
                        <td><%= exam %></td>
                        <td><%= state %></td>
                        <td><%= issue %></td>
                    </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </table>
    <div class="button-container">
        <a href="admin_panel.html"><button>Back</button></a>
    </div>
</body>
</html>
