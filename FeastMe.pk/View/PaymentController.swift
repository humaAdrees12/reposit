//
//  PaymentController.swift
//  FeastMe.pk
//
//  Created by Apple on 1/8/18.
//  Copyright © 2018 TreehouseStudio.co. All rights reserved.
//

import UIKit


class PaymentController: UIViewController, UITextFieldDelegate {
    
    
    
    
    @IBOutlet weak var Ecard: UITextField!
    @IBOutlet weak var EcardVerification: UITextField!
    @IBOutlet weak var Emonth: UITextField!
    @IBOutlet weak var Ezip: UITextField!
    @IBOutlet weak var Eyear: UITextField!
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    
    @IBOutlet weak var cardNumber: UIView!
    @IBOutlet weak var ccv: UIView!
    @IBOutlet weak var month: UIView!
    @IBOutlet weak var year: UIView!
    @IBOutlet weak var zip: UIView!

    @IBOutlet weak var addCraditCardLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Design.object.bottom_Line(views:cardNumber)
        Design.object.bottom_Line(views: ccv)
        Design.object.bottom_Line(views: month)
        Design.object.bottom_Line(views: year)
        Design.object.bottom_Line(views: zip)
        Ecard.delegate = self
        EcardVerification.delegate = self
        Emonth.delegate = self
        Ezip.delegate = self
        Eyear.delegate = self
        
        activity.isHidden = true
//        addCraditCardLabel.text = "Add Cradit Card"
//        
//        
//        
//        
//        
//        // Do any additional setup after loading the view.
    }
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
////    @IBAction func ScanCard(_ sender: Any) {
////
////        let cardIOVC = CardIOPaymentViewController(paymentDelegate: self)
////        cardIOVC?.collectCardholderName = true
////        cardIOVC?.guideColor = UIColor.blue
////        cardIOVC?.collectCVV = true
////        present(cardIOVC!, animated: true, completion: nil)
////    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    override var preferredStatusBarStyle: UIStatusBarStyle{
//        return .lightContent
//    }
//    
//    
//    @IBAction func save(_ sender: Any) {
//        
//        activity.isHidden = false
//        activity.startAnimating()
//        addCraditCardLabel.text = "Saving"
//        
//        if(Ecard.text! != "" &&  EcardVerification.text! != "" && Emonth.text! != "" && Ezip.text! != "" && Eyear.text! != "" ){
//            
//            
////            Addcard.object.performSavingCard(postCode: Ezip.text!, cardNumber: Ecard.text!, cvv: EcardVerification.text!, expiryMonth: Emonth.text!, expiryYear: Eyear.text!) { (results) in
////
//                if(results == ""){
//                    self.activity.isHidden = true
//                    self.addCraditCardLabel.text = "Add Cradit Card"
//                    let a = alert.object.alertForSignin(title: "Congratulation", message: "Your card has been added Sucessfully")
//                    
//                    self.present(a, animated: true, completion: nil)
//                    
//                }else {
//                    
//                    self.activity.isHidden = true
//                    self.addCraditCardLabel.text = "Add Cradit Card"
//                    let b = alert.object.alertForSignin(title: "Alert!", message: "\(results)")
//                    
//                    self.present(b, animated: true, completion: nil)
//                    
//                    
//                }
//            }
//        
//        }else {
//    
//            self.activity.isHidden = true
//            self.addCraditCardLabel.text = "Add Cradit Card"
////            let a = alert.instance.alertForSignin(title: "Alert!", message: "Make sure you have enter the erite information ")
////
//            self.present(a, animated: true, completion: nil)
//    
//        }
//    
//    
//    
//    }
//
//
//
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.view.endEditing(true)
//    }
//
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        
//        self.view.resignFirstResponder()
//        return true
//    }
//    
//
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        
//        if(textField == Ecard){
//            
//            Ecard.text = ""
//            
//        }else if(textField == EcardVerification){
//            
//            EcardVerification.text = ""
//            
//        }else if(textField == Emonth){
//            
//            Emonth.text = ""
//            
//        }else if(textField == Ezip){
//            
//            Ezip.text = ""
//            
//        }
//        else if(textField == Eyear){
//            
//            Eyear.text = ""
//            
//        }
//    }
//
//
//
//
//
//}
//
//extension PaymentController : CardIOPaymentViewControllerDelegate {
//    
//    
//    
//    
//    func userDidProvide(_ cardInfo: CardIOCreditCardInfo!, in paymentViewController: CardIOPaymentViewController!) {
//        
//        paymentViewController.dismiss(animated: true, completion: nil)
//        
//        Ecard.text!  = "\(cardInfo.cardNumber!)"
//        EcardVerification.text! = "\(cardInfo.cvv!)"
//        Emonth.text!  = "\(cardInfo.expiryMonth)"
//        Eyear.text! = "\(cardInfo.expiryYear)"
//        
//    }
//    
//    func userDidCancel(_ paymentViewController: CardIOPaymentViewController!) {
//        
//        dismiss(animated: true, completion: nil)
//    }
//    
//    
//    
//}
//
//
//
//
//
//
}
