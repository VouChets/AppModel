<html>
    <head>
        <title>AppModel</title>
    </head>
    <body>
        <% 
			String usuario=request.getParameter("txt_usuario");
			String password=request.getParameter("txt_password");
			
			if (usuario.equals("")){
				response.sendRedirect("../index.jsp");
			}
        %>
        <P>Nombre de usuario: <%=usuario%></P>
        <P>Clave: <%=password %></P>
    </body>
</html>
