//
//  ChatViewController.swift
//  iAgent
//
//  Created by user167032 on 4/16/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit
import Parse
import SwiftUI

class ChatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var newChatText: UITextField!
    @IBOutlet weak var chatMessageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    //when user clicks the send button to send a chatbc
    @IBAction func onSendChat(_ sender: Any) {
        
        let chatMessage = PFObject(className: "Message")
        
        //provide default empty string
        //error because we need to create a chatMessageField in Parse
        chatMessage["text"] = chatMessageField.text ?? ""
        
        chatMessage.saveInBackground{(success, error) in
            if success {
                print ("The message was saved!")
                //need to also clear the chat from text field
            } else if let error = error {
                print("Problem saving message: \(error.localizedDescription)")
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath) as! ChatCell
        return cell
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
