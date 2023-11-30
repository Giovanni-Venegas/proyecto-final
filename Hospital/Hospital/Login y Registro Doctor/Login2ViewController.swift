//
//  Login2ViewController.swift
//  Hospital
//
//  Created by Elian Rueda on 15/11/23.
//

import UIKit
import FirebaseAuth


class Login2ViewController: UIViewController {

    @IBOutlet weak var email2TextField: UITextField!
    
    @IBOutlet weak var password2TextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
    }
    
    func setUpElements() {
        
        // Hide the error label
        errorLabel.alpha = 0
        
        // Style the elements
        Utilities.styleTextField(email2TextField)
        Utilities.styleTextField(password2TextField)
        Utilities.styleFilledButton(loginButton)
        
    }


    @IBAction func loginTapped2(_ sender: Any) {
        // TODO: Validate Text Fields
        
        // Create cleaned versions of the text field
        let email = email2TextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = password2TextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Signing in the user
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                // Couldn't sign in
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
            }
            else {
                
                let home2ViewController = self.storyboard?.instantiateViewController(identifier: "Home2VC") as? Home2ViewController
                
                self.view.window?.rootViewController = home2ViewController
                self.view.window?.makeKeyAndVisible()
                
            }
        }
        
        
    }
}
