//
//  location.swift
//  FeastMe.pk
//
//  Created by Apple on 1/9/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import UIKit
import CoreLocation

class location: UIViewController,CLLocationManagerDelegate {
    
  
    @IBOutlet weak var Vieww: UIView!
    
    var locationManager:CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 5.0) {
            self.Vieww.frame.origin.y = self.Vieww.frame.maxY
        }
//        UIView.animate(withDuration: 5.0) {
//
//
//        }
////
//       self.logoLabel.center.x = self.view.center.x
//
        
        
        if CLLocationManager.locationServicesEnabled() {
            switch CLLocationManager.authorizationStatus() {
            case .notDetermined, .restricted, .denied:
                print("No access")
            case .authorizedAlways, .authorizedWhenInUse:
               
                print("Access")
                
            }
        } else {
            
        }
        
        determineMyCurrentLocation()
    }
    
    @IBOutlet weak var btn: UIButton!
    
    @IBAction func btn1(_ sender: Any) {
        
        
        UIView.animate(withDuration: 5.0) {
            self.Vieww.frame.origin.y
                = self.Vieww.frame.origin.y - self.Vieww.frame.maxX
            
            
                    }
      
    }
    
    @IBAction func loc(_ sender: Any) {
        
        let alert = UIAlertController(title: "Uh oh!", message: "Please turn on location Services to allow OpenTable to determine your location or enter a location to search manually.OpenTable uses your location to help you find nearby resturants.Open TableView never share Your location.", preferredStyle: UIAlertControllerStyle.alert)
       
       
        alert.addAction(UIAlertAction(title: "Setting ", style: .default, handler: { (action:UIAlertAction) in
            
            if let url = URL(string: UIApplicationOpenSettingsURLString) {
                // If general location settings are enabled then open location settings for the app
                UIApplication.shared.openURL(url)
            }
            
        }))
        
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        
        determineMyCurrentLocation()
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    func determineMyCurrentLocation() {
        
        locationManager = CLLocationManager()
       
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        //cheak the location service are enable
        if CLLocationManager.locationServicesEnabled() {
            
            //update location
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
           
        } else{
            
            if let url = URL(string: UIApplicationOpenSettingsURLString) {
                // If general location settings are enabled then open location settings for the app
                UIApplication.shared.openURL(url)
            }
            
        }
    }
   
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        var locValue:CLLocationCoordinate2D = manager.location!.coordinate
        print("locations = \(locValue.latitude) \(locValue.longitude)")
    }
    
}

    
    
    
    


