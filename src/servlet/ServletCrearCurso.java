package servlet;

import controller.controladorCurso;
import include.curso;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletCrearCurso", urlPatterns = {"/crearCurso"})
public class ServletCrearCurso extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ID_CURSO = 0;

        String NOMBRE_CURSO = request.getParameter("NOMBRE_CURSO");
        String NIVEL = request.getParameter("NIVEL");

        try {
            ID_CURSO = Integer.parseInt(request.getParameter("ID_CURSO"));
        }catch (NumberFormatException e){

        }
        curso nuevoCurso = new curso(ID_CURSO, NOMBRE_CURSO, NIVEL);

        controladorCurso cc = new controladorCurso();
        if (cc.insertCurso(nuevoCurso)){
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("a_curso.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
