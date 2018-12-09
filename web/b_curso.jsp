<%@page import="controller.controladorCurso" %>
<%
    String ID_CURSO = request.getParameter("ID_CURSO");
    controladorCurso cc = new controladorCurso();
    if (cc.eliminarCurso(ID_CURSO)){
        response.sendRedirect("cursos.jsp");
    }else {
        response.sendRedirect("index.jsp");
    }
%>