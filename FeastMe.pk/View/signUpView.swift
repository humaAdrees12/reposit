//
//  signUpView.swift
//  FeastMe.pk
//
//  Created by Apple on 1/17/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import UIKit
import Foundation

class signUpView: UIViewController {

    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var UserName: UITextField!
    
    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
    }

   
    @IBAction func DoneBtn(_ sender: Any) {
        
        
        SignUp2.object.signupp(name: UserName.text!, pass: Password.text!, email: Email.text!, phonNumber: phoneNumber.text!) { (results) in
            if(results == "True"){
                
               
                let storyboad = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboad.instantiateViewController(withIdentifier: "tabBar")
                self.present(controller, animated: true, completion: nil)
                
            }else{
                
              self.present( alert.object.alertForSignin(title: "Invalid Information", message: "\(results)"), animated: true, completion: nil)
            
            }
//        else if(results == "False"){
//
//                    self.present( alert.object.alertForSignin(title: "User Not Exist", message: "please chose another phone not exist"), animated: true, completion: nil)
//                    // next page
//            }else if(results == "No"){
//                self.present( alert.object.alertForSignin(title: "No wifi", message: "No Wifi"), animated: true, completion: nil)
//
//                // no wifi
//            }
        }
        }
        
    }
    


