/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.DBInsert;

/**
 *
 * @author saran
 */
public class InsertController {
    
    public void inserCategory(String name){
        if(name.equals("name")){
        
        }else{
            new DBInsert().insertCategory(name);
        }
    }
    
}
