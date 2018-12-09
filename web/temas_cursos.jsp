<%@ page import="controller.controladorTemas_curso" %>
<%@ page import="include.curso" %>
<%@ page import="include.temas_curso" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page='views/header.jsp'></jsp:include>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>Temas cursos</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="a_temas_curso.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>id_temas</th>
                    <th>nombre_tema</th>
                    <th>id_curso</th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    controladorTemas_curso cc = new controladorTemas_curso();
                    int contador = 0;
                    ArrayList<temas_curso> temas_cursos = new ArrayList<temas_curso>();
                    temas_cursos = cc.obtenerTemas_curso();
                    if (temas_cursos.size()> 0){
                        for (int a= 0; a<temas_cursos.size();a++){
                            htmlcode += "<tr><td>" + temas_cursos.get(a).getId_temas()
                                    + "</td><td>" + temas_cursos.get(a).getNombre_tema()
                                    + "</td><td>" + temas_cursos.get(a).getId_curso()
                                    + "</td><td><a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                                    + "<a class=\"btn blue\" href=\"m_temas_cursos.jsp?ID_TEMAS="+ temas_cursos.get(a).getId_temas()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn red\" onclick=\"delete_TemasCurso('"+ temas_cursos.get(a).getId_temas()+"')\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    }else {
                        htmlcode += "<tr><td colspan=\"10\">No existen Temas curso</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>

<jsp:include page= 'views/footer.jsp'></jsp:include>