<jsp:include page='views/header.jsp'></jsp:include>

<%@page import="controller.controladorTemas_curso" %>
<%@page import="include.temas_curso" %>
<%@page import="java.util.ArrayList" %>

<%
    String ID_TEMAS = request.getParameter("ID_TEMAS");
    controladorTemas_curso cc = new controladorTemas_curso();
    ArrayList<temas_curso> temasCursos = new ArrayList<temas_curso>();
    temasCursos = cc.obtenerTemas_curso(ID_TEMAS);
%>

<div class="container">
    <form class="col s12" action="/modificarTemasCurso" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Modificar Temas Curso</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="ID_TEMAS" name="ID_TEMAS" type="text" readonly="readonly" value="<% out.print(temasCursos.get(0).getId_temas()); %>">
                <label for="ID_TEMAS" class="center-align">ID Temas Curso</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="NOMBRE_TEMA" name="NOMBRE_TEMA" type="text" value="<% out.print(temasCursos.get(0).getNombre_tema()); %>">
                <label for="NOMBRE_TEMA" class="center-align">Nombre del tema</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="ID_CURSO" name="ID_CURSO" type="text" value="<% out.print(temasCursos.get(0).getId_curso()); %>">
                <label for="ID_CURSO" class="center-align">Id Curso</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">

            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row">
            <div class="col s4">

            </div>
            <div class="input-field col s4">
                <input type="submit" value="Actualizar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="temas_cursos.jsp">Regresar</a>
            </div>
            <div class="col s4">

            </div>
        </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>