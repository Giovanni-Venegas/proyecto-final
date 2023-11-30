//
//  SignUpViewController.swift
//  Hospital
//
//  Created by Elian Rueda on 23/11/23.
//

import UIKit

class SignUp3ViewController: UIViewController {

    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Configurar cualquier inicialización necesaria
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        // Verificar si las credenciales son correctas
        if let email = emailField.text, let password = passwordField.text {
            if email == "admin@gmail.com" && password == "admin*1234" {
                // Credenciales correctas, navegar a Home3ViewController
                performSegue(withIdentifier: "segueToHome3", sender: self)
            } else {
                // Credenciales incorrectas, mostrar un mensaje de error
                showAlert(message: "Credenciales incorrectas. Por favor, inténtalo de nuevo.")
            }
        }
    }

    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
