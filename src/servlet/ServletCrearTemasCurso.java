package servlet;

import controller.controladorTemas_curso;
import include.temas_curso;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletCrearTemasCurso", urlPatterns = {"/crearTemasCurso"})
public class ServletCrearTemasCurso extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ID_TEMAS = 0;

        String NOMBRE_TEMA = request.getParameter("NOMBRE_TEMA");

        int ID_CURSO = 0;

        try {
            ID_TEMAS = Integer.parseInt(request.getParameter("ID_TEMAS"));
            ID_CURSO = Integer.parseInt(request.getParameter("ID_CURSO"));
        }catch (NumberFormatException e){

        }
        temas_curso nuevoTemasCurso = new temas_curso(ID_TEMAS, NOMBRE_TEMA, ID_CURSO);

        controladorTemas_curso cc = new controladorTemas_curso();
        if (cc.insertTemas_curso(nuevoTemasCurso)){
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("a_temas_curso.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
