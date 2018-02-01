//
//  SignUp.swift
//  FeastMe.pk
//
//  Created by Apple on 1/17/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import Foundation
typealias metadataa = (_ msg:String)-> Void

class SignUp2{
    
static var object = SignUp2()
func signupp(name: String,pass: String,email: String,phonNumber: String,results:@escaping metadataa){
        
        if (name == "" || pass == "" || email == "" || phonNumber == ""){
            
            return results("Empty Fields")
        }else{
            DispatchQueue.global(qos: .background).async {
            let headers = [
                "Content-Type": "application/x-www-form-urlencoded",
                "Cache-Control": "no-cache",
                "Postman-Token": "754b17cd-a72e-6bb9-2eaf-27e7b2fc9658"
            ]
            
                print(phonNumber)
                print(email)
            let postData = NSMutableData(data: "phone=\(phonNumber)".data(using: String.Encoding.utf8)!)
            postData.append("&usertype=User".data(using: String.Encoding.utf8)!)
            postData.append("&company_id=1".data(using: String.Encoding.utf8)!)
            postData.append("&email=\(email)".data(using: String.Encoding.utf8)!)
            postData.append("&password=\(pass)".data(using: String.Encoding.utf8)!)
            postData.append("&firstname=empty".data(using: String.Encoding.utf8)!)
            postData.append("&lastname=empty".data(using: String.Encoding.utf8)!)
            postData.append("&username=testusername".data(using: String.Encoding.utf8)!)
            postData.append("&licenseno=empty".data(using: String.Encoding.utf8)!)
            postData.append("&vehicleplateno=Izz-12-1212".data(using: String.Encoding.utf8)!)
            postData.append("&home_address=H # 12345".data(using: String.Encoding.utf8)!)
            postData.append("&vehicle_year=0".data(using: String.Encoding.utf8)!)
            postData.append("&vehicle_manufacture=empty".data(using: String.Encoding.utf8)!)
            postData.append("&vehicle_type=Seden".data(using: String.Encoding.utf8)!)
            postData.append("&driver_train_type=empty".data(using: String.Encoding.utf8)!)
            
            let request = NSMutableURLRequest(url: NSURL(string: "http://128.199.199.239:4000/signup")! as URL,
                                              cachePolicy: .useProtocolCachePolicy,
                                              timeoutInterval: 10.0)
            request.httpMethod = "POST"
            request.allHTTPHeaderFields = headers
            request.httpBody = postData as Data
            
            let session = URLSession.shared
            let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
                if (error != nil) {
                   
                    DispatchQueue.main.async {
                        return results("Please cheak internet")
                    }
                } else {
                    do {
                        
                        let temp = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String:AnyObject]
                        print(temp)
                        let data = temp["Response"] as! NSDictionary
                        
                        print(data)
                        
                        let hh =  data.value(forKey: "Code")!
                        print(hh)
                        let val = String(describing:hh)
                        print(val)
                        
                        DispatchQueue.main.async {
                            if val == "200"{
                            return results("True")
                           
                            }else if(val == "300"){
                                
                               return results("userTypeError")
                            }else if(val == "400"){
                                
                                return results("email,phonNo Error")
                            }else{
                                return results("other Error")
                            }
                        }
                    }
                    catch{
                        DispatchQueue.main.async {
                            return results("Slow internet")
                        }
                    }
                }
            })
            
            dataTask.resume()
            }
            
            
    }
        
        
        
        
    }
    
    
    
    
}
