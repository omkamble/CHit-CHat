//
//  RegisterViewController.swift
//  CHit CHat
//
//  Created by OM KAMBLE on 29/03/23.
//

import UIKit
import FirebaseAuth
class RegisterViewController: UIViewController {
    
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e)
                }else{
                    self.performSegue(withIdentifier: "ChatS", sender: self)
                }
            }
        }
    }
    
}
