/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author Tommy
 */
public class Topping {
    private int t_id;
    private String topping;
    private double t_price;
    private String t_image;

    public Topping(int t_id, String topping, double t_price, String t_image) {
        this.t_id = t_id;
        this.topping = topping;
        this.t_price = t_price;
        this.t_image = t_image;
    }

    public Topping() {
    }

    public int getT_id() {
        return t_id;
    }

    public void setT_id(int t_id) {
        this.t_id = t_id;
    }

    public String getTopping() {
        return topping;
    }

    public void setTopping(String topping) {
        this.topping = topping;
    }

    public double getT_price() {
        return t_price;
    }

    public void setT_price(double t_price) {
        this.t_price = t_price;
    }

    public String getT_image() {
        return t_image;
    }

    public void setT_image(String t_image) {
        this.t_image = t_image;
    }

    @Override
    public String toString() {
        return "Topping{" + "t_id=" + t_id + ", topping=" + topping + ", t_price=" + t_price + ", t_image=" + t_image + '}';
    }
    
    

}