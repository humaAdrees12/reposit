//
//  changePhone.swift
//  FeastMe.pk
//
//  Created by Apple on 12/22/17.
//  Copyright © 2017 TreehouseStudio.co. All rights reserved.
//

import UIKit

class changePhone: UIViewController {

    @IBOutlet weak var update: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        update.layer.cornerRadius = 15
        update.clipsToBounds = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cross(_ sender: UIButton) {
    HUtalities.object.PerformSegue(Controller: self, Identifier: "pSetting")
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
