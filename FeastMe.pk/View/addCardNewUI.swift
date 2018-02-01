//
//  addCardNewUI.swift
//  FeastMe.pk
//
//  Created by Apple on 1/8/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import UIKit

class addCardNewUI: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //viewHelper.instance.lockOrientation(.portrait)
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
            
            
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
            
            return cell1
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(indexPath.row == 0){
            
            let controller = storyboard?.instantiateViewController(withIdentifier: "AddCoustomCard") as! paymentController
            
            self.navigationController?.pushViewController(controller, animated: true)
            
       
        
    }
    
    }
