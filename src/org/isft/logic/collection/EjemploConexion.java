/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Vector;
import org.isft.jdbc.DataBase;

/**
 *
 * @author Jose
 */
public class EjemploConexion {
 
    public Vector traerClientes(){
        Vector vec = new Vector();
        try{
			HashMap map= new HashMap();
			map.put("user","root");
			map.put("password","");
			map.put("origen_datos","dbtp2");
            //DataBase db = new DataBase(new HashMap());
            DataBase db = new DataBase(map);
            ResultSet rst = null;
            Connection cn = db.getConnection();
            Statement s = cn.createStatement();
            rst = s.executeQuery("SELECT * FROM CLIENTE");   
            while(rst.next()){
                //vec.add(rst.getString("id_cliente")  + " - " + rst.getString("nombre") + "-" + rst.getString("apellido"));
                vec.add(rst.getString("id_cliente"));
                vec.add(rst.getString("nombre"));
                vec.add(rst.getString("apellido"));
            }
        }catch(Exception exc){
            System.out.println("EXCEPCION AL INTENTAR CONECTAR CON LA BASE DE DATOS : " + exc.getMessage());
        }
        return vec;
    }
   
}
