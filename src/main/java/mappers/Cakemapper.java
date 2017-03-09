/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mappers;

import data.Bottom;
import data.Db;
import data.Topping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Tommy
 */
public class Cakemapper {
    public ArrayList<Topping> getToppings(){
        ArrayList <Topping> toppings = new ArrayList();
        
        Topping top = null;
        
        try{
            Connection conn = new Db().getConnection();
            String sql = "select * from toppings order by t_price";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()){
                top = new Topping();
                top.setT_id(rs.getInt("t_id"));
                top.setTopping(rs.getString("topping"));
                top.setT_price(rs.getDouble("t_price"));
                top.setT_image(rs.getString("t_image"));
                toppings.add(top);
            }
            return toppings;
            
        }catch(Exception ex){
            System.out.println(ex);
        }
        
        return null;
    }
    
    public ArrayList<Bottom> getBottoms(){
        ArrayList <Bottom> bottoms = new ArrayList();
        
        Bottom bot = null;
        
        try{
            Connection conn = new Db().getConnection();
            String sql = "select * from bottoms order by b_price";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()){
                bot = new Bottom();
                bot.setB_id(rs.getInt("b_id"));
                bot.setBottom(rs.getString("bottom"));
                bot.setB_price(rs.getDouble("b_price"));
                bot.setB_image(rs.getString("b_image"));
                bottoms.add(bot);
            }
            return bottoms;
            
        }catch(Exception ex){
            System.out.println(ex);
        }
        
        return null;
    }
    
    
    public Topping getSingleTopping(int topping){
        
        Topping singleTop = new Topping();
        singleTop = null;
        
        try{
            Connection conn = new Db().getConnection();
            String sql = "select * from toppings where t_id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, topping);
            ResultSet rs = stmt.executeQuery();
            
                if(rs.next()){
                    singleTop = new Topping();
                    singleTop.setT_id(rs.getInt("t_id"));
                    singleTop.setT_image(rs.getString("t_image"));
                    singleTop.setTopping(rs.getString("topping"));
                    singleTop.setT_price(rs.getShort("t_price"));
                    return singleTop;
                }
            
        }catch(Exception ex){
            System.out.println(ex);
        }
        
        return singleTop;
    } 
    
    
    
    public Bottom getSingleBottom(int bottom){
        
        Bottom singleBot = new Bottom();
        singleBot = null;
        
        try{
            Connection conn = new Db().getConnection();
            String sql = "select * from bottoms where b_id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, bottom);
            ResultSet rs = stmt.executeQuery();
            
                if(rs.next()){
                    singleBot = new Bottom();
                    singleBot.setB_id(rs.getInt("b_id"));
                    singleBot.setB_image(rs.getString("b_image"));
                    singleBot.setBottom(rs.getString("bottom"));
                    singleBot.setB_price(rs.getShort("b_price"));
                    return singleBot;
                }
            
        }catch(Exception ex){
            System.out.println(ex);
        }
        
        return singleBot;
    } 
    
    
    
    public static void main(String[] args) {
        Cakemapper ck = new Cakemapper();
            System.out.println(ck.getSingleBottom(3));
            
            System.out.println(ck.getSingleTopping(4));
        // System.out.println(ck.getToppings());
    }
}
