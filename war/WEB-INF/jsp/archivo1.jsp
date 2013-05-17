<%@page import="org.isft.logic.collection.EjemploConexion, java.util.Vector"%>
<html>
    <head>
        <title>AppModel</title>
    </head>
    <body>
        <% 
			String usuario=request.getParameter("txt_usuario");
			String password=request.getParameter("txt_password");
			boolean cambio=false;
			int aux=0;
			
			if ((usuario.equals(""))||(password.equals(""))){
				cambio=true;
			}
			if((usuario.length()<4)||(password.length()<4)){
				cambio=true;
			}
			if (cambio)
				response.sendRedirect("../index.jsp?error=true");
        %>
        <P>Nombre de usuario: <%=usuario%></P>
        <P>Clave: <%=password %></P>
        
        
         <%
        try{
            EjemploConexion ejemplo=new EjemploConexion();%>
            Conexion exitosa<br/>
            <TABLE>
				<TR>
					<TD>N&deg; Cliente</TD><TD>Nombre</TD><TD>Apellido</TD>
				</TR>
				<TR>
            <%Vector vec=ejemplo.traerClientes();
            for(int i=0; i<vec.size(); i++){%>
				<TD>	<%=(String)vec.get(i)%></TD>
            <%
				if (aux==2){
					if(i==(vec.size()-1))
						out.println("</TR>");
					else
						out.println("</TR><TR>");
					aux=0;
				}else{
					aux++;
				}
			}
			%>
			</TABLE>
		<%	
        } catch(Exception exc){%>
            Conexion erronea
          <%=exc.getMessage()%>  
        <%} 
        %> 
        
    </body>
</html>
