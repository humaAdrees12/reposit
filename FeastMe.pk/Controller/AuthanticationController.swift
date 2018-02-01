//
//  AuthanticationController.swift
//  FeastMe.pk
//
//  Created by Apple on 1/10/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import Foundation

typealias metadata = (_ msg:String)-> Void

class Authantication{
    
    
    static var Object = Authantication()
    
    
    func Signin(phone:String , pass:String, results:@escaping metadata){
        
        if(phone == "" || pass == "" ){
            
            return results("Empty Fields")
            
        }else{
             DispatchQueue.global(qos: .background).async {
        
        let headers = [
            "Content-Type": "application/x-www-form-urlencoded",
            "Cache-Control": "no-cache",
            "Postman-Token": "a831dc4f-d557-a2cb-8db9-acf008319d1a"
        ]
        
        let postData = NSMutableData(data: "usertype=User".data(using: String.Encoding.utf8)!)
        postData.append("&company_id=1".data(using: String.Encoding.utf8)!)
        postData.append("&phone=\(phone)".data(using: String.Encoding.utf8)!)
        postData.append("&password=\(pass)".data(using: String.Encoding.utf8)!)
        
 
        let request = NSMutableURLRequest(url: NSURL(string: "http://128.199.199.239:4000/login")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
            
            
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = headers
        request.httpBody = postData as Data
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                return results("AuthenticatinError")
            } else {
            
             do {
                
                    let temp = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String:AnyObject]
                
                
                let data = temp["Response"] as! NSDictionary
                
                print(data)
                let hh =  data.value(forKey: "Code")!
                print(hh)
                let h =  data.value(forKey: "Data")!
                print(h)
                // check key "Data"
                let val = String(describing:h)
                print(val)
                 DispatchQueue.main.async {
                if val != "0"{
         
                     let data1 = data["Userdata"] as! NSArray
                 
                    print(data1[0] as! NSDictionary)
                    
                    let h1 =  (data1[0] as! NSDictionary).value(forKey: "first_name")!
                    
                    print(h1)

                  let phone = (data1[0] as AnyObject).value(forKey: "phone")!
                    User.object.phonNumber = phone as! String
                    print(phone)
                   
                    let pass =  (data1[0] as AnyObject).value(forKey: "password")!
                    User.object.password = pass as! String
                    print(pass)
                    
                    let email = (data1[0] as AnyObject).value(forKey: "email")!
                    User.object.UEmail = email as! String
                    print(email)
                   
                    let ProfileImg = (data1[0] as AnyObject).value(forKey: "profile_image")!
                    User.object.UProfilePic = ProfileImg as! String
                    print(ProfileImg)
//                    let uid = (data1[0] as AnyObject).value(forKey: "userid")!
//                    User.object.Uid = uid as! String
                    
                  
                    
                   UserDefaults.standard.set("\(User.object.phonNumber)", forKey: "phone")
                   //  UserDefaults.standard.set("\(User.object.Uid)", forKey: "UID")
                    UserDefaults.standard.set("\(User.object.UEmail)", forKey: "email")
                    
                   
                }
                
                else{
                    
                    return results("No")
                }
                }
                        }
             catch{
                DispatchQueue.main.async {
                    return results("No")
                }
                
                }
        }
            
        })
        
        dataTask.resume()
            }
    }
    
    }
    
}
