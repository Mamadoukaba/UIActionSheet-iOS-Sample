//
//  ViewController.swift
//  UIActionSheet
//
//  Created by Mamadou Kaba on 6/16/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    var alertController: UIAlertController!
    
    //MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Construct Action Sheet
        alertController = UIAlertController(title: "Contact Me", message: "You can contact me via Email or iMessage", preferredStyle: .ActionSheet)
        
        //Construct Email Action for Action Sheet
        let emailAction = UIAlertAction(title: "Email", style: .Default) { (action) in
            //Send the file via email!
            print("Send the file via email!")
        }
        //Construct iMessage Action for Action Sheet
        let imessageAction = UIAlertAction(title: "iMessage", style: .Default) { (action) in
            //Send the file via iMessage
            print("Send the file via iMessage!")
        }
        
        //Construct Cancel Action for Action Sheet
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            print("File transition was canceled!")
        }
        
        // Add Email Action to Action Sheet
        alertController.addAction(emailAction)
        
        // Add iMessage Action to Action Sheet
        alertController.addAction(imessageAction)
        
        //Add Cancel Action to Action Sheet
        alertController.addAction(cancelAction)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }

    //Show Activity Button
    @IBAction func showActivtyButtonTapped(sender: AnyObject) {
        self.presentViewController(alertController!, animated: true, completion: nil)
    }
    
    

}

