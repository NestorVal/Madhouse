/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.madhouse.config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Familia
 */
public class Conexion {    
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/madhouse";
    private static final String USER = "root";
    private static final String PASS = "1022405079";
    
    public static Connection conectar(){
        Connection conectar = null;
        try{
            Class.forName(DRIVER);
            conectar = DriverManager.getConnection(URL, USER, PASS);
            if (conectar != null){
                System.out.println("Conexion exitosa a la base de datos");
            }
        } catch(Exception e){
            System.out.println("Error al conectar a Madhouse" + e.getMessage());
        }
        return conectar;
    }
}
