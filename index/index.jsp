<%@page import="org.isft.logic.collection.EjemploConexion, java.util.Vector"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<title>AppModel index</title>
</head>
<body>
	<!-- 
	Pagina principal
       <%
        try{
            EjemploConexion ejemplo=new EjemploConexion();%>
            Conexion exitosa<br/>
            <%Vector vec=ejemplo.traerClientes();
            for(int i=0; i<vec.size(); i++){%>
              Cliente : <%=(String)vec.get(i)%><br/>  
            <%}
        } catch(Exception exc){%>
            Conexion erronea
          <%=exc.getMessage()%>  
        <%} 
        %> 
        
     -->
     <%
		boolean error=false;//request.getParameter("error");
		if (request.getParameter("error")!=null)
			error=Boolean.parseBoolean(request.getParameter("error"));
		
			out.println(error);
     %>
     <H3>Login</H3>
     <FORM method="post" action="jsp/archivo1.jsp">
		<TABLE>
			<TR>
				<TD>Usuario</TD>
				<TD><INPUT type="text" name="txt_usuario"></TD>
			</TR>
			<TR>
				<TD>Password</TD>
				<TD><INPUT type="password" name="txt_password"></TD>
			</TR>
			<TR>
				<TD><INPUT type="submit"></TD>
				<TD><INPUT type="reset"></TD>
			</TR>
			<TR>
				<TD><A href="#">Recordar contrase&ntilde;a</A></TD>
			</TR>
			<TR>
				<TD><A href="#">Registrarse</A></TD>
			</TR>
		</TABLE>
     </FORM>
</body>
</html>
