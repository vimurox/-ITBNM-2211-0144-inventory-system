/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

import Model.InventoryUtils;
import javax.swing.JOptionPane;
import java.io.File;
import static jdk.nashorn.internal.runtime.Debug.id;


/**
 *
 * @author vimukthi
 */
public class Openpdf {

    public static void OpenById(String id){

        try {
            if ((new File(InventoryUtils.billPath +id+ ".pdf")).exists()) {
             Process p =Runtime
                     .getRuntime()
                     .exec("rundll32 url.dll,FileProtocolHandler"+InventoryUtils.billPath+""+id+".pdf");
            }
            else{
              JOptionPane.showMessageDialog(null,"File is not Exists");
            
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);

        }
    }

}
