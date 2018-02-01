//
//  payment.swift
//  FeastMe.pk
//
//  Created by Apple on 1/7/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import UIKit

class payment: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
   
    @IBAction func Back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        if indexPath.row != 2{
//            return CGSize(width: 300, height: 125)
//        }else{
//            return CGSize(width: 300, height: 140)
//        }
//    }
    
    
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//
//
//    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.section == 2){
            
            return 60
        }else{
            return 50
        }
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(section == 0){
            return 1
            
        }else if (section == 1){
            return 1
            
        }else if (section == 2){
            return 1
        }
        
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellOne", for: indexPath)
            
            return cell
            
      }else if (indexPath.section == 1) {

            let cell = tableView.dequeueReusableCell(withIdentifier: "cellTwo", for: indexPath)

            return cell

        }
        else if (indexPath.section == 2) {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellThree", for: indexPath)
           
         
            return cell
            
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellThree", for: indexPath)
            
            
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if(section == 0){
            
            return "Payment Method"
        }else if(section == 2){
            
            return "Credit Card"
        }else{
            return ""
        }
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    

}
