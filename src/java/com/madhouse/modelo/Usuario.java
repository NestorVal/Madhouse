/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.madhouse.modelo;

import java.util.Date;

/**
 *
 * @author Familia
 */
public class Usuario {
    private int idUsuario;
    private String nombre;
    private String apellido;
    private String correo;
    private String contrasena;
    private String telefono;
    private String direccion;
    private Date fechaNacimiento;
    private String rol;
    
    
    public Usuario() {
}
    
    public Usuario(int idUsuario, String nombre, String apellido, String correo, String contrasena, String telefono, String direccion, String rol, Date fechaNacimiento){
    this.idUsuario = idUsuario;
    this.nombre = nombre;
    this.apellido = apellido;
    this.correo = correo;
    this.contrasena = contrasena;
    this.telefono = telefono;
    this.direccion = direccion;
    this.fechaNacimiento = fechaNacimiento;
    this.rol = rol;
    
    }
    
    public int getIdUsuario(){
    return idUsuario;
    }
    public void setIdUsuario(int idUsuario){
    this.idUsuario = idUsuario;
    }
    
    public String getNombre(){
    return nombre;
    }
    public void setNombre (String nombre){
    this.nombre = nombre;
    }
    
    public String getApellido (){
    return apellido;
    }
    public void setApellido(String  apellido){
    this.apellido = apellido;
    }
    
    public String getCorreo(){
    return correo;
    }
    public void  setCorreo(String correo){
    this.correo = correo;
    }
 
    public String getContrasena(){
    return contrasena;
    }
    public void setContrasena(String contrasena){
    this.contrasena = contrasena;
    }
    
    public String getTelefono(){
    return telefono;
    }
    public void setTelefono(String telefono){
     this.telefono = telefono;}
    
    public String getDireccion(){
    return direccion;
    }
    public void setDireccion(String direccion){
    this.direccion = direccion;}
    
    public Date getFechaNacimiento(){
    return fechaNacimiento;
    }
    public void setFechaNacimiento(Date fechaNacimiento){
    this.fechaNacimiento = fechaNacimiento;
    }
    
    public String getRol(){
    return rol;
    }
    public void setRol(String rol){
    this.rol = rol;
    }
}

