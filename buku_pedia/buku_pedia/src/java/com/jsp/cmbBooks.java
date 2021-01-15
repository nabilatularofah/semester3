/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jsp;

/**
 *
 * @author hp-ProBook
 */
public class cmbBooks {
    private String product_id ; 
 private String title ; 
 private String author; 
 private String description ; 
 private int price ; 
 private String image ; 
 
 
 public void setProduct_id(String product_id){ 
 this.product_id = product_id ; 
 } 
 
 public String getProduct_id(){ 
 return this.product_id ; 
 } 
 
 
 public void setTitle(String title){ 
 this.title = title ; 
 } 
 
 public String getTitle(){ 
 return this.title ; 
 } 
 
 public void setAuthor(String author){ 
 this.author = author ; 
 } 
 
 public String getAuthor(){ 
 return this.author ; 
 } 
 
 
 public void setDescription(String description){ 
 this.description = description ; 
 } 
 
 public String getDescription(){ 
 return this.description ; 
 } 
 
 public void setPrice(int price){ 
 this.price = price ; 
 } 
 
 public int getPrice(){ 
 return this.price ; 
 } 
 
 public void setImage(String image){ 
 this.image = image ; 
 } 
 
 public String getImage(){ 
 return this.image ; 
 } 
 
 public String toString(){ 
 return product_id+ " " + title; 
 } 
 

}
