/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.madhouse.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.madhouse.config.Conexion;
import com.madhouse.modelo.Usuario;
import java.sql.Date;
import java.util.ArrayList;
import java.sql.ResultSet;

public class UsuarioDAO {
    public boolean registrarUsuario(Usuario user) {
    String sql = "INSERT INTO usuario (nombre, apellido, correo, contrasena, telefono, direccion, fechaNacimiento, rol) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
  
        System.out.println("Auditoría SQL: [" + sql + "]");
    
        Connection cn = null;
        PreparedStatement ps = null;
    
        try {
            cn = Conexion.conectar(); 

            System.out.println("Auditoría BD: [" + cn.getCatalog() + "]");
        
            ps = cn.prepareStatement(sql);

            ps.setString(1, user.getNombre());
            ps.setString(2, user.getApellido());
            ps.setString(3, user.getCorreo());
            ps.setString(4, user.getContrasena());
            ps.setString(5, user.getTelefono());
            ps.setString(6, user.getDireccion());
            ps.setDate(7, new java.sql.Date(user.getFechaNacimiento().getTime()));
            ps.setString(8, user.getRol());
            
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println("Error al registrar: " + e.getMessage());
            return false;
        } 
    }
    
    public boolean validarLogin(String correo, String pass){
        String sql = "SELECT * FROM usuario WHERE correo = ? AND contrasena = ?";
        
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            cn = Conexion.conectar();
            ps = cn.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, pass);
            
            rs = ps.executeQuery();
            
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Error en login: " + e.toString());
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (cn != null) cn.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar: " + e.toString());
            }
        }
        return false;
    }
    
    public ArrayList<Usuario> listarUsuarios() {
        
        ArrayList<Usuario> listaUsuarios = new ArrayList<>();
        
        String sql = "SELECT * FROM usuario";
        
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            cn = Conexion.conectar();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                Usuario user = new Usuario();
                
                user.setIdUsuario(rs.getInt("idUsuario"));
                user.setNombre(rs.getString("nombre"));
                user.setApellido(rs.getString("apellido"));
                user.setCorreo(rs.getString("correo"));
                user.setContrasena(rs.getString("contrasena"));
                user.setTelefono(rs.getString("telefono"));
                user.setDireccion(rs.getString("direccion"));
                user.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                user.setRol(rs.getString("rol"));
                
                listaUsuarios.add(user);
            }
            
        } catch (Exception e) {
            System.out.println("Error al listar usuarios: " + e.toString());
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (cn != null) cn.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar: " + e.toString());
            }
        }
        
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
        String sql = "UPDATE usuario SET nombre = ?, apellido = ?, correo = ?, contrasena = ?, telefono = ?, direccion = ?, fechaNacimiento = ?, rol = ? WHERE idUsuario = ?";
        
        Connection cn = null;
        PreparedStatement ps = null;

        try {
            cn = Conexion.conectar();
            ps = cn.prepareStatement(sql);
            
            ps.setString(1, user.getNombre());
            ps.setString(2, user.getApellido());
            ps.setString(3, user.getCorreo());
            ps.setString(4, user.getContrasena());
            ps.setString(5, user.getTelefono());
            ps.setString(6, user.getDireccion());
            ps.setDate(7, new java.sql.Date(user.getFechaNacimiento().getTime()));
            ps.setString(8, user.getRol());
            ps.setInt(9, user.getIdUsuario());
            
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
        String sql = "DELETE FROM usuario WHERE idUsuario = ?";
        
        Connection cn = null;
        PreparedStatement ps = null;

        try {
            cn = Conexion.conectar();
            ps = cn.prepareStatement(sql);
            ps.setInt(1, idEliminar);
            ps.execute();
            return true;
            
        } catch (Exception e) {
            System.out.println("Error al eliminar usuario: " + e.toString());
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
}
