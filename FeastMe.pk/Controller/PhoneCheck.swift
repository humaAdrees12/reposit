//
//  PhoneCheck.swift
//  FeastMe.pk
//
//  Created by Apple on 1/12/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import Foundation

typealias metadata1 = (_ msg:String)-> Void

class phoneCheck{
    
    static var object = phoneCheck()
    
    func phoneNumber(phone:String,results:@escaping metadata1){
    
         DispatchQueue.global(qos: .background).async {
        let headers = [
            "Content-Type": "application/x-www-form-urlencoded",
            "Cache-Control": "no-cache",
            "Postman-Token": "1354d407-0481-62ff-d570-6c16f98bf39d"
        ]
        
        let postData = NSMutableData(data: "&phone=\(phone)".data(using: String.Encoding.utf8)!)
            postData.append("&company_id=1".data(using: String.Encoding.utf8)!)
            postData.append("&usertype=User".data(using: String.Encoding.utf8)!)
        
        let request = NSMutableURLRequest(url: NSURL(string: "http://128.199.199.239:4000/checkphone")! as URL,
                                    cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = headers
        request.httpBody = postData as Data
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request as URLRequest,completionHandler:{
            (data, response, error) -> Void in
            if (error != nil) {
               
            return results("No")
            print(error)
                
            } else {
                do {
                    
                    let temp = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String:AnyObject]
                    print(temp)
                    let data = temp["Response"] as! NSDictionary
                    
                    print(data)
                    let hh =  data.value(forKey: "Data")!
                    print(hh)
                    let val = String(describing:hh)
                    print(val)
                      DispatchQueue.main.async {
                    if val != "0"{
                        
                        return results("True")
                    }else{
                       
                        return results("False")
                          }
        }
                }
                catch{
                    DispatchQueue.main.async {
                        return  results("No")
                    }
                
                }
            }
        })
        
        dataTask.resume()
}
}
}
