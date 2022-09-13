<%-- 
    Document   : Users
    Created on : 13 de set. de 2022, 15:04:33
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>

<body>
    <div class="Cadastro">
        <link rel="stylesheet" type="text/css" href="newcss.css">
        <h1>Lista de usuarios</h1>
        <form method="post">
            <button type="submit" class="btn btn-primary btn-block btn-large" onclick="window.location.href='Home.jsp'">Voltar.</button>
            &nbsp;
            <button type="submit" class="btn btn-primary btn-block btn-large btn-red" onclick="window.location.href='Users.jsp'">Lista de usuarios.</button>
        </form>
        
        <%
            String u = request.getParameter("u");
            String p = request.getParameter("p");
            if(u != null && p != null){
                out.println("Usuario: " + u + "<br>");
                out.println("Senha: " + p + "<br>");
            }
        %>

        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/poo", "root", "");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select * from usuarios");
                out.println("<table border=1 width=50% height=50%>");
                out.println("<tr><th>Usuario</th><th>Senha</th></tr>");
                while (rs.next()) {
                    String n = rs.getString("usuario");
                    String s = rs.getString("senha");
                    out.println("<tr><td>" + n + "</td><td>" + s + "</td></tr>");
                }
                out.println("</table>");
                con.close();
            } catch (Exception e) {
                out.println(e);
            }
        %>


    </div>

        %>
    </div>