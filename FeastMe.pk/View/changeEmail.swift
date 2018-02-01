//
//  changeEmail.swift
//  FeastMe.pk
//
//  Created by Apple on 1/3/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import UIKit

class changeEmail: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var update: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

//       Design.object.view_circle(views: image)
//
//        self.update.frame.origin.x = self.view.bounds.width
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
