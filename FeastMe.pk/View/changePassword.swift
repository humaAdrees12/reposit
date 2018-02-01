//
//  changePassword.swift
//  FeastMe.pk
//
//  Created by Apple on 1/3/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import UIKit

class changePassword: UIViewController {

    @IBOutlet weak var submit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        submit.layer.cornerRadius = 15
        submit.clipsToBounds = true
        // Do any additional setup after loading the view.
    }

    @IBAction func cross(_ sender: UIButton) {
        HUtalities.object.PerformSegue(Controller: self, Identifier: "pSetting")
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
