//
//  deliveryDetails.swift
//  FeastMe.pk
//
//  Created by Apple on 1/9/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import UIKit

class deliveryDetails: UIViewController {

    @IBOutlet var Vieww: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()


        UIView.animate(withDuration: 5.0) {
            self.Vieww.frame.origin.x = self.view.bounds.width
        }
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
