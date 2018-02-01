
//
//  Alert.swift
//  Cabigate
//
//  Created by abdur rehman on 6/4/17.
//  Copyright © 2017 abdur rehman. All rights reserved.
//

import Foundation
import UIKit

class alert {
    
    
    static var instance = alert()
    
    static var object :alert {
        
        return instance
    }
    
    func LoadingView(view:UIView , staus:Bool){
        
        let LodingV = UIView()
        let ActivityIndecator = UIActivityIndicatorView()
        
        
        if(staus){
            
            LodingV.frame = CGRect(x:view.frame.width / 2 - 50 , y: view.frame.height / 2 - 50, width: 100, height: 100)
            
            ActivityIndecator.frame = CGRect(x:LodingV.frame.width / 2 - 15 , y: LodingV.frame.height / 2 - 15, width: 30, height: 30)
            
            LodingV.layer.cornerRadius = LodingV.frame.width / 12
            LodingV.clipsToBounds = true
            ActivityIndecator.color = UIColor.white
            ActivityIndecator.startAnimating()
            LodingV.backgroundColor = UIColor(red: 6/255, green: 191/255, blue: 195/255, alpha: 1)
            LodingV.layer.borderWidth = 1.5
            LodingV.layer.borderColor = UIColor(red: 191/255, green: 236/255, blue: 237/255, alpha: 1).cgColor
            LodingV.tag = 23
            LodingV.addSubview(ActivityIndecator)
            
            view.addSubview(LodingV)
            
            
        }else{
            
            if let vie = view.viewWithTag(23){
                
                vie.removeFromSuperview()
                
            }
            
        }
        
    }
    
    
    
    func alertForSignin(title:String , message:String)->UIAlertController{
        
        
        let message = UIAlertController(title:title , message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        let Action = UIAlertAction(title: "Ok", style: UIAlertActionStyle.destructive) { (UIAlertAction) in
            
        }
        
        
        message.addAction(Action)
        
        
        return message
    }
    
    
    
    
    
}

