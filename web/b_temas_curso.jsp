<%@page import="controller.controladorTemas_curso" %>
<%
    String ID_TEMAS = request.getParameter("ID_TEMAS");
    controladorTemas_curso cc = new controladorTemas_curso();
    if (cc.eliminarTemas_curso(ID_TEMAS)){
        response.sendRedirect("temas_cursos.jsp");
    }else {
        response.sendRedirect("index.jsp");
    }
%>