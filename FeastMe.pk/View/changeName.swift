//
//  changeName.swift
//  FeastMe.pk
//
//  Created by Apple on 12/22/17.
//  Copyright © 2017 TreehouseStudio.co. All rights reserved.
//

import UIKit

class changeName: UIViewController {

    @IBOutlet weak var update: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        update.layer.cornerRadius = 15
        update.clipsToBounds = true
        // Do any additional setup after loading the view.
    }

    @IBAction func cross(_ sender: UIButton) {
        HUtalities.object.PerformSegue(Controller: self, Identifier: "pSetting")
    }
    

}
