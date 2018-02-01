//
//  SignupVarificationCode.swift
//  LoginUI_FeastMee
//
//  Created by APPLE on 12/19/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class SignupVarificationCode: UIViewController {

    @IBOutlet weak var varificationButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        varificationButton.layer.cornerRadius = 15
        varificationButton.clipsToBounds = true
        
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
