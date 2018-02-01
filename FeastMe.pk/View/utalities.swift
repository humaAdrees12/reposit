//
//  utalities.swift
//  FeastMe.pk
//
//  Created by Apple on 1/3/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import Foundation
import UIKit


class HUtalities {
    
    
    static var object = HUtalities()
    
    
    
    
    // Perform Segue 1->Parent view Controller 2-> New child
    func PerformSegue(Controller:UIViewController , Identifier:String){
        
        // initiaite Root view controller
        let storyboar = UIStoryboard(name: "Main", bundle: nil)
        // making a new view controller
        let CTR = storyboar.instantiateViewController(withIdentifier:"\(Identifier)")
        // parent is calling to child view controller
        Controller.present(CTR, animated: true, completion: nil)
        
    }
    
    
    
    
    //perform Alert which contains title and message
    func Alert(Titile:String? , Message:String!) -> UIAlertController{
        
        //initiate AlertController
        let message = UIAlertController(title:Titile , message: Message, preferredStyle: UIAlertControllerStyle.alert)
        
        let Action = UIAlertAction(title: "Ok", style: UIAlertActionStyle.destructive) { (UIAlertAction) in
            
        }
        //calling to the alertController
        message.addAction(Action)
        
        
        return message
        
        
    }
}




