//
//  ChatViewController.swift
//  CHit CHat
//
//  Created by OM KAMBLE on 29/03/23.
//

import UIKit

class ChatViewController: UIViewController {

    
    @IBOutlet weak var messageTextfield: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
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
