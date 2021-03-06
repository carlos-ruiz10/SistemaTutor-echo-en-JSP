package controller;
import include.curso;
import model.modeloCurso;

import java.util.ArrayList;

public class controladorCurso {
    public boolean insertCurso(curso curso){
        modeloCurso curso1 = new modeloCurso();
        return curso1.insertCurso(curso);
    }

    public ArrayList<curso> obtenerCurso(){
        modeloCurso curso = new modeloCurso();
        return curso.obtenerCurso();
    }

    public ArrayList<curso> obtenerCurso(String id){
        modeloCurso Curso = new modeloCurso();
        return Curso.obtenerCurso(id);
    }

    public boolean actualizarCurso(curso Curso){
        modeloCurso curso1 = new modeloCurso();
        return curso1.actualizarCurso(Curso);
    }

    public boolean eliminarCurso(String id){
        modeloCurso curso1 = new modeloCurso();
        return curso1.borrarCurso(id);
    }

   /* public static void main(String[] args){

        controladorCurso cc = new controladorCurso();
        System.out.println(cc.insertCurso(new curso(002,"frances","3")));

        // listar todos los elementos de la tabla
        ArrayList<curso> cursos = new ArrayList<curso>();
        cursos = cc.obtenerCurso();
        for (int a= 0;a<cursos.size();a++){
            System.out.println("ID: "+ cursos.get(a).getId_curso());
            System.out.println("Nombre: "+ cursos.get(a).getNombre_curso());
            System.out.println("Nivel: "+ cursos.get(a).getNivel());
            System.out.println();
        }
        //listar un elemento de la tabla por llave primaria
        ArrayList<curso> Curso = new ArrayList<curso>();
        Curso = cc.obtenerCurso("001");

        for (int b=0;b<Curso.size();b++){
            System.out.println("ID: "+ Curso.get(b).getId_curso());
            System.out.println("Nombre: "+ Curso.get(b).getNombre_curso());
            System.out.println("Nivel: "+ Curso.get(b).getNivel());
            System.out.println();
        }

        //Modificar un elemento
        //System.out.println(cc.actualizarCurso(new curso(002, "frances","004")));

        //Eliminar un elemento
        //System.out.println(cc.eliminarCurso("2"));

    }
    */
}
