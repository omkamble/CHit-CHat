//
//  RegisterViewController.swift
//  CHit CHat
//
//  Created by OM KAMBLE on 29/03/23.
//

import UIKit
import FirebaseAuth
class RegisterViewController: UIViewController {

    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let email = emailTF.text, let password = passwordTF.text{
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error{
                print(e)
            }else{
                self.performSegue(withIdentifier: "ChatS", sender: self)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
