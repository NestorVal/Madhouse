/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.madhouse.test;

import java.util.ArrayList;
import com.madhouse.modelo.Usuario;
import com.madhouse.dao.UsuarioDAO;

/**
 *
 * @author Familia
 */
public class PruebaRegistro {
    
    //PRUEBA ELIMINAR
    
    /* public static void main(String[] args) {
       
    UsuarioDAO dao = new UsuarioDAO();

    int idABorrar = 1; 

    if (dao.eliminarUsuario(idABorrar)) {
        System.out.println("¡Usuario " + idABorrar + " eliminado con éxito!");
    } else {
        System.out.println("No se pudo eliminar al usuario.");
    }
    } */
    
    
   //PRUEBA ACTUALIZAR
    
    /* public static void main(String[] args) {
 
    UsuarioDAO dao = new UsuarioDAO();
    Usuario usuario = new Usuario();
    usuario.setIdUsuario(2);
    
    usuario.setNombre("Camilo");
    usuario.setApellido("Diaz");
    usuario.setCorreo("link252009@gmail.com");
    usuario.setContrasena("12345");
    usuario.setTelefono("3001234567");
    usuario.setDireccion("Calle 123");
    usuario.setFechaNacimiento(new java.util.Date());
    usuario.setRol("Cliente");
   
    if (dao.actualizarUsuario(usuario)) {
        System.out.println("Usuario actualizado exitosamente en la base de datos");
    } else {
        System.out.println("Hubo un error al intentar actualizar el usuario.");
    }
    } */
    
    // PRUEBA LISTAR
    
    /* public static void main(String[] args) {
    ArrayList<Usuario> listaObtenida = dao.listarUsuarios();
    
    System.out.println("--- LISTA DE USUARIOS EN MADHOUSE ---");

for (Usuario usuarioActual : listaObtenida) {
    
    System.out.println("ID: " + usuarioActual.getIdUsuario());
    System.out.println("Nombre: " + usuarioActual.getNombre() + " " + usuarioActual.getApellido());
    System.out.println("Correo: " + usuarioActual.getCorreo());
    System.out.println("-------------------------------------");
}
    }
    } */
    
    
 // PRUEBA REGISTRO 
    
    /* public static void main(String[] args) {
    
    UsuarioDAO dao = new UsuarioDAO();
    Usuario nuevoUsuario = new Usuario();
    
    nuevoUsuario.setNombre("Nestor");
    nuevoUsuario.setApellido("Rubiano");
    nuevoUsuario.setCorreo("nestorRubiano@test.com");
    nuevoUsuario.setContrasena("12345");
    nuevoUsuario.setTelefono("3001234567");
    nuevoUsuario.setDireccion("Calle 123");
    nuevoUsuario.setFechaNacimiento(new java.util.Date()); // Fecha actual
    nuevoUsuario.setRol("Cliente");
   
    
    if (dao.registrarUsuario(nuevoUsuario)) {
        System.out.println("¡Usuario registrado exitosamente en la base de datos!");
    } else {
        System.out.println("Hubo un error al intentar registrar el usuario.");
    }
    }*/
}
