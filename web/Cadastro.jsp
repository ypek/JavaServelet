<div class="Cadastro">
    <link rel="stylesheet" type="text/css" href="newcss.css">
    <h1>Cadastro POO</h1>
    <form method="post">
    	<input type="text" name="u" placeholder="Usuario" required="required" />
        <input type="password" name="p" placeholder="Senha" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Cadastrar.</button>
    </form>
    
    <button type="submit" class="btn btn-primary btn-block btn-large" onclick="window.location.href='Home.jsp'">Voltar.</button>
    &nbsp;
    <button type="submit" class="btn btn-primary btn-block btn-large btn-red" onclick="window.location.href='Users.jsp'">Lista de usuarios.</button>

    <%
    String u = request.getParameter("u");
    String p = request.getParameter("p");
    if(u != null && p != null){
        out.println("Usuario: " + u + "<br>");
        out.println("Senha: " + p + "<br>");
    }
    %>

</div>
