package servlet;

import controller.controladorTemas_curso;
import include.temas_curso;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletModificarTemasCurso", urlPatterns = {"/modificarTemasCurso"})
public class ServletModificarTemasCurso extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ID_TEMAS=0;
        try {
            ID_TEMAS = Integer.parseInt(request.getParameter("ID_TEMAS"));
        } catch (NumberFormatException e){

        }

        String NOMBRE_TEMA =  request.getParameter("NOMBRE_TEMA");
        int ID_CURSO=0;
        try {
            ID_CURSO = Integer.parseInt(request.getParameter("ID_CURSO"));
        }catch (NumberFormatException e){

        }

        temas_curso nuevoTemaCurso = new temas_curso(ID_TEMAS, NOMBRE_TEMA, ID_CURSO);

        controladorTemas_curso cc = new controladorTemas_curso();
        if (cc.actualizarTemas_curso(nuevoTemaCurso)){
            response.sendRedirect("temas_cursos.jsp");
        }else {
            response.sendRedirect("m_temas_cursos.jsp?id="+ ID_CURSO);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
