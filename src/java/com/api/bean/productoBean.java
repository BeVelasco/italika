/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.api.bean;

/**
 *
 * @author vaio
 */
public class productoBean {
    private String sku;
    private String fert;
    private String modelo;
    private String tipo;
    private String numserie;
    private String fecha;
    private String estatus;
    
    public String getSku(){
        return this.sku;
    }
    
    public void setSku(String sku){
        this.sku = sku;
    }
    
    public String getFert(){
        return this.fert;
    }
    
    public void setFert(String fert){
        this.fert = fert;
    }
    
    public String getModelo(){
        return this.modelo;
    }
    
    public void setModelo(String modelo){
        this.modelo = modelo;
    }
    
    public String getTipo(){
        return this.tipo;
    }
    
    public void setTipo(String tipo){
        this.tipo = tipo;
    }
    
    public String getNumserie(){
        return this.numserie;
    }
    
    public void setNumserie(String numserie){
        this.numserie = numserie;
    }
    
    public String getFecha(){
        return this.fecha;
    }
    
    public void setFecha(String fecha){
        this.fecha = fecha;
    }
    
    public String getEstatus(){
        return this.estatus;
    }
    
    public void setestatus(String estatus){
        this.estatus = estatus;
    }
}
