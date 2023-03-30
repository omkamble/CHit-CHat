//
//  ChatViewController.swift
//  CHit CHat
//
//  Created by OM KAMBLE on 29/03/23.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    
    @IBOutlet weak var messageTextfield: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    var messages: [Message] = [
    
       Message(sender: "1@2.com", body: "Hey"),
       Message(sender: "a@b.com", body: "Hemlo"),
       Message(sender: "1@2.com", body: "Sssup???")
     
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        navigationItem.hidesBackButton = true
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do {
          try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
   

}
 
extension ChatViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        as! MessageCell
        cell.label.text = messages[indexPath.row].body
        return cell
    }
    
    
}
