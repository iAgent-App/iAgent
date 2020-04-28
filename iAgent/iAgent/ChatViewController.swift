//
//  ChatViewController.swift
//  iAgent
//
//  Created by user167032 on 4/16/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit
import Parse

class ChatViewController: UIViewController {

    @IBOutlet weak var newChatText: UITextField!
    @IBOutlet weak var chatMessageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
