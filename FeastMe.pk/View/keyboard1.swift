//
//  keyboard1.swift
//  FeastMe.pk
//
//  Created by Apple on 1/9/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import UIKit

class keyboard1: UIViewController,UITextFieldDelegate {

    @IBOutlet var text1: UIView!
    
    @IBOutlet weak var text0: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var text3: UITextField!
    var activeTextField : UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       
        // Do any additional setup after loading the view.
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        activeTextField = textField
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
