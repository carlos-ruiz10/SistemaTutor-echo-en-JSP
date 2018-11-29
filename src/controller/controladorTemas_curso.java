package controller;
import include.temas_curso;
import model.modeloTemas_curso;

import java.util.ArrayList;

public class controladorTemas_curso {

    public boolean insertTemas_curso(temas_curso temas_curso){
        modeloTemas_curso temas1 = new modeloTemas_curso();
        return temas1.insertTemas_curso(temas_curso);
    }

    public ArrayList<temas_curso> obtenerTemas_curso(){
        modeloTemas_curso temas_curso = new modeloTemas_curso();
        return temas_curso.obtenerTemas_curso();
    }

    public ArrayList<temas_curso> obtenerTemas_curso(String id){
        modeloTemas_curso Temas_curso = new modeloTemas_curso();
        return Temas_curso.obtenerTemas_curso(id);
    }

    public boolean actualizarTemas_curso(temas_curso Temas_curso){
        modeloTemas_curso temas_curso1 = new modeloTemas_curso();
        return temas_curso1.actualizarTemas_curso(Temas_curso);
    }

    public boolean eliminarTemas_curso(String id){
        modeloTemas_curso temas_curso1 = new modeloTemas_curso();
        return temas_curso1.borrarTemas_curso(id);
    }

    public static void main(String[] args){

        controladorTemas_curso cc = new controladorTemas_curso();
       //System.out.println(cc.insertTemas_curso(new temas_curso(004,"verbos", 1)));

        //listar todos los elementos de la tabla
        ArrayList<temas_curso> temas_cursos = new ArrayList<temas_curso>();
        temas_cursos = cc.obtenerTemas_curso();
        for (int a=0;a<temas_cursos.size();a++){
            System.out.println("ID: "+ temas_cursos.get(a).getId_temas());
            System.out.println("Nombre: "+ temas_cursos.get(a).getNombre_tema());
            System.out.println("ID Curso: "+ temas_cursos.get(a).getId_curso());
        }
        //listar un elementode la tabla por la llave primaria
        ArrayList<temas_curso> Temas_curso = new ArrayList<temas_curso>();
        Temas_curso = cc.obtenerTemas_curso("3");

        for (int b=0;b<Temas_curso.size();b++){
            System.out.println("ID: "+ Temas_curso.get(b).getId_temas());
            System.out.println("Nombre: "+ Temas_curso.get(b).getNombre_tema());
            System.out.println("ID Curso: "+ Temas_curso.get(b).getId_curso());
            System.out.println();
        }
        //Actualizar un elemento de la tabla
        System.out.println(cc.actualizarTemas_curso(new temas_curso(3,"sitema tutor",1)));

        //Eliminar un elemento
        //System.out.println(cc.eliminarTemas_curso("4"));
    }

}
