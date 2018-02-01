//
//  SignupPhoneNumber.swift
//  LoginUI_FeastMee
//
//  Created by APPLE on 12/19/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class SignupPhoneNumber: UIViewController {

    @IBOutlet weak var enterNumerContainer: UIView!
    @IBOutlet weak var viewShowOnAnimation: UIView!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var varifyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        doneButton.layer.cornerRadius = 15
        doneButton.clipsToBounds = true
        varifyButton.layer.cornerRadius = 15
        varifyButton.clipsToBounds = true
        
        self.viewShowOnAnimation.frame = CGRect(x: 400, y: 220 , width: 343 , height: 208)
        
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
            
            
        }, completion: { (true) in
            self.enterNumerContainer.isHidden = true
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
