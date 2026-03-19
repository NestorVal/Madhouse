/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.madhouse.dao;

import java.sql.Connection;
import java.sql.PreparedStatement; // La herramienta para preparar el SQL
import java.sql.SQLException; // Para manejar errores de base de datos
import com.madhouse.config.Conexion; // Tu clase que creamos antes para conectar 
import com.madhouse.modelo.Usuario;
import java.sql.Date;
import java.util.ArrayList;
import java.sql.ResultSet;
/**
 *
 * @author Familia
 */
public class UsuarioDAO {
    public boolean registrarUsuario(Usuario user) {
    String sql = "INSERT INTO usuario (nombre, apellido, correo, contrasena, telefono, direccion, fechaNacimiento, rol) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    
    // 1. Detector de caracteres ocultos en el texto
    System.out.println("Auditoría SQL: [" + sql + "]");
    
    Connection cn = null;
    PreparedStatement ps = null;

    try {
        // 3. Abrimos el puente
        cn = Conexion.conectar(); 
        
        // 2. Detector de la base de datos real en uso
        System.out.println("Auditoría BD: [" + cn.getCatalog() + "]");
        
        ps = cn.prepareStatement(sql);

        // 4. El Mapeo: Pasamos los datos del objeto 'user' a los '?'
        ps.setString(1, user.getNombre());
        ps.setString(2, user.getApellido());
        ps.setString(3, user.getCorreo());
        ps.setString(4, user.getContrasena());
        ps.setString(5, user.getTelefono());
        ps.setString(6, user.getDireccion());
        // Para la fecha, usamos setDate y convertimos la fecha de Java a la de SQL
        ps.setDate(7, new java.sql.Date(user.getFechaNacimiento().getTime()));
        ps.setString(8, user.getRol());
       

        // 5. Ejecutamos la orden
        ps.executeUpdate();
        return true; // Si llegamos aquí, todo salió bien

    } catch (SQLException e) {
        System.out.println("Error al registrar: " + e.getMessage());
        return false;
    } 
}
    
    public ArrayList<Usuario> listarUsuarios() {
        
        // 1. Preparamos la "caja" vacía donde guardaremos cada usuario que encontremos
        ArrayList<Usuario> listaUsuarios = new ArrayList<>();
        
        // 2. El plano SQL: Queremos todos los registros de la tabla
        String sql = "SELECT * FROM usuario";
        
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null; // ¡Nuestra nueva herramienta: La libreta temporal!

        try {
            // 1. Abrimos el puente hacia MySQL
            cn = Conexion.conectar();
            
            // 2. Le damos la orden (sin signos de interrogación) al mensajero
            ps = cn.prepareStatement(sql);
            
            // 3. El mensajero va, ejecuta la lectura, y nos trae la "libreta" llena de datos
            rs = ps.executeQuery();
            
            // Mientras exista una fila debajo en la libreta (rs)...
            while (rs.next()) {
                
                // 1. Creamos un molde (objeto) vacío para este usuario específico
                Usuario user = new Usuario();
                
                // 2. Extraemos de MySQL (rs.get) y lo guardamos en nuestro molde (user.set)
                user.setIdUsuario(rs.getInt("idUsuario"));
                user.setNombre(rs.getString("nombre"));
                user.setApellido(rs.getString("apellido"));
                user.setCorreo(rs.getString("correo"));
                user.setContrasena(rs.getString("contrasena"));
                user.setTelefono(rs.getString("telefono"));
                user.setDireccion(rs.getString("direccion"));
                user.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                user.setRol(rs.getString("rol"));
                
                // 3. Empacamos este usuario ya lleno dentro de nuestra caja general
                listaUsuarios.add(user);
            }
            
        } catch (Exception e) {
            System.out.println("Error al listar usuarios: " + e.toString());
        } finally {
            // 4. El cierre de puertas (Limpieza)
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (cn != null) cn.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar: " + e.toString());
            }
        }
        
        // Al final de todo el proceso, entregamos la caja (esté llena o vacía)
        return listaUsuarios;
    }
    
    public Usuario buscarPorId(int idBusqueda){
        String sql = "SELECT * FROM usuario WHERE idUsuario = ?";
        
        Usuario user = null;
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        
       try{
       
           cn = Conexion.conectar();
           ps = cn.prepareStatement(sql);
           ps.setInt(1, idBusqueda);
           rs = ps.executeQuery();
           
          if(rs.next()){
              user = new Usuario();
              
              user.setIdUsuario(rs.getInt("idUsuario"));
                user.setNombre(rs.getString("nombre"));
                user.setApellido(rs.getString("apellido"));
                user.setCorreo(rs.getString("correo"));
                user.setContrasena(rs.getString("contrasena"));
                user.setTelefono(rs.getString("telefono"));
                user.setDireccion(rs.getString("direccion"));
                user.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                user.setRol(rs.getString("rol"));
          }
       }catch(Exception e){
           System.out.println("Error al buscar usuario: " + e.toString());
       } finally {
             try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (cn != null) cn.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar: " + e.toString());
            }
        }
        return user;
    }
    
    public boolean actualizarUsuario(Usuario user) {
        // 1. El plano SQL con la regla de oro (WHERE) al final
        String sql = "UPDATE usuario SET nombre = ?, apellido = ?, correo = ?, contrasena = ?, telefono = ?, direccion = ?, fechaNacimiento = ?, rol = ? WHERE idUsuario = ?";
        
        Connection cn = null;
        PreparedStatement ps = null;

        try {
            cn = Conexion.conectar();
            ps = cn.prepareStatement(sql);
            
           // Mapeo de los datos nuevos (SET)
            ps.setString(1, user.getNombre());
            ps.setString(2, user.getApellido());
            ps.setString(3, user.getCorreo());
            ps.setString(4, user.getContrasena());
            ps.setString(5, user.getTelefono());
            ps.setString(6, user.getDireccion());
            ps.setDate(7, new java.sql.Date(user.getFechaNacimiento().getTime()));
            ps.setString(8, user.getRol());
            
            // La Llave Maestra (WHERE)
            ps.setInt(9, user.getIdUsuario()); // <--- Aquí es donde entra el ID que mencionaste
            
            
            // Ejecutamos la orden de escritura
            ps.execute();
            return true;
            
        } catch (Exception e) {
            System.out.println("Error al actualizar usuario: " + e.toString());
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (cn != null) cn.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar: " + e.toString());
            }
        }
    }
    
    public boolean eliminarUsuario(int idEliminar) {
        // 1. El plano SQL (¡No olvides el WHERE!)
        String sql = "DELETE FROM usuario WHERE idUsuario = ?";
        
        Connection cn = null;
        PreparedStatement ps = null;

        try {
            cn = Conexion.conectar();
            ps = cn.prepareStatement(sql);
            
            // 2. Mapeo: Solo hay un signo de interrogación
            ps.setInt(1, idEliminar);
            
            // 3. Ejecución
            ps.execute();
            return true;
            
        } catch (Exception e) {
            System.out.println("Error al eliminar usuario: " + e.toString());
            return false;
        } finally {
            // 4. Limpieza de siempre
            try {
                if (ps != null) ps.close();
                if (cn != null) cn.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar: " + e.toString());
            }
        }
    }
}
