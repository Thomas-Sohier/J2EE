<%@ page import="fr.epsi.jeeProject.beans.Utilisateur" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: thomas
  Date: 27/02/19
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        List<Utilisateur> lesUsers = new ArrayList<>();
        Connection c = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost:9003", "SA", "");
        out.println("Liste des utilisateurs");
        %> <br> <%
        PreparedStatement prep = c.prepareStatement("SELECT * FROM Users");
        ResultSet resultSet = prep.executeQuery();
        while (resultSet.next()) {
            %> <br> <%
            out.println(resultSet.getString(1));
            out.println(resultSet.getString(2));
            %> <br <%
        }
    %>
</body>
</html>
