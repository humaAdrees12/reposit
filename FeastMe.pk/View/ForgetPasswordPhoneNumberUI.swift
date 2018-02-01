//
//  ForgetPasswordPhoneNumberUI.swift
//  LoginUI_FeastMee
//
//  Created by APPLE on 12/19/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class ForgetPasswordPhoneNumberUI: UIViewController {

    @IBOutlet weak var viewShowOnAnimation: UIView!
    @IBOutlet weak var enterNumerContainer: UIView!
    @IBOutlet weak var enterPhoneTextField: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var resendTextView: UILabel!
    @IBOutlet weak var resendButton: UIButton!
    @IBOutlet weak var varificationButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        doneButton.layer.cornerRadius = 15
        doneButton.clipsToBounds = true
        varificationButton.layer.cornerRadius = 15
        varificationButton.clipsToBounds = true
        
        self.viewShowOnAnimation.frame = CGRect(x: 400, y: 220 , width: 343 , height: 208)
        self.resendTextView.frame = CGRect(x: 400, y: 624, width: 160, height: 21)
        self.resendButton.frame = CGRect(x: 400, y: 619, width: 92, height: 30)
//        UIView.animate(withDuration: 2) {
//            self.enterPhoneTextField.text = "Furqan"
//        }
//
        
        //doneButton.layer.borderWidth = 1
//        doneButton.layer.borderColor = (UIColor(displayP3Red: CGFloat(38), green: CGFloat(67), blue: CGFloat(159), alpha: 1) as! CGColor)
//        
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = self.view.bounds
//        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.white.cgColor]
//        self.view.layer.addSublayer(gradientLayer)

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneButton(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0, options: [.allowAnimatedContent], animations: {
            
            self.enterNumerContainer.frame = CGRect(x: -343, y: 220 , width: 343 , height: 208)
            self.viewShowOnAnimation.frame = CGRect(x: 16, y: 220 , width: 343 , height: 208)
            
            UIView.animate(withDuration: 1, delay: 3, options: [.allowAnimatedContent], animations: {
                
                self.resendTextView.frame = CGRect(x: 71, y: 624, width: 160, height: 21)
                
                UIView.animate(withDuration: 1, delay: 5, options: [.allowAnimatedContent], animations: {
                    self.resendButton.frame = CGRect(x: 223, y: 619, width: 92, height: 30)
                }, completion: nil)
                
            }, completion: nil)

        }, completion: { (true) in
            self.enterNumerContainer.isHidden = true
        })
        //self.enterNumerContainer.frame = CGRect(x: 16, y: 220 , width: 343 , height: 208)
        
    }
    @IBAction func backButton(_ sender: Any) {
        self.enterNumerContainer.frame = CGRect(x: 16, y: 220 , width: 343 , height: 208)
        self.viewShowOnAnimation.frame = CGRect(x: 400, y: 220 , width: 343 , height: 208)
        self.resendTextView.frame = CGRect(x: 400, y: 624, width: 160, height: 21)
        self.resendButton.frame = CGRect(x: 400, y: 619, width: 92, height: 30)
    }
    
    
}
