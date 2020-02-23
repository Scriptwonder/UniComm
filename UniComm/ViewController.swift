//
//  ViewController.swift
//  Login
//
//  Created by Sioiok on 2/11/20.
//  Copyright © 2020 Sioiok. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    //MARK: Properties
    //from login
    @IBAction func username(_ sender: Any) {
    }
    @IBAction func password(_ sender: Any) {
    }
    
    @IBAction func login(_ sender: Any) {
    }
    @IBAction func register(_ sender: Any) {
    }
    //from register
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var reenter: UITextField!
    
    @IBAction func createAcc(_ sender: Any) {
        if password.text != reenter.text{
            let warnRaiser = UIAlertController(title:"Password unmatch", message:"please re-enter you password.", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title:"Pass", style:.cancel,handler:nil)
            warnRaiser.addAction(defaultAction)
            self.present(warnRaiser,animated:true,completion:nil)
            
        }
        else{
            Auth.auth().createUser(withEmail:email.text!, password:password.text!){
                (user,error)in
                if error==nil{
                    self.performSegue(withIdentifier:"signUpToHome",sender:self)
                }
                else{
                    let warnRaiser = UIAlertController(title:"Error",message:error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title:"Pass", style:.cancel,handler:nil)
                    warnRaiser.addAction(defaultAction)
                    self.present(warnRaiser, animated:true,completion:nil)
                }
        }
    }
    }
    
    //MARK: Actions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

