//
//  MisDatosViewController.swift
//  Hospital
//
//  Created by Elian Rueda on 22/11/23.
//

import UIKit
import Firebase

class MisDatosViewController: ViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            if Auth.auth().currentUser != nil {
                fetchUserData()
            } else {
                // Manejar el caso en el que no hay un usuario autenticado
                print("No hay un usuario autenticado.")
            }
        }
        
    func fetchUserData() {
        guard let userID = Auth.auth().currentUser?.uid else {
            print("Error: UID del usuario es nulo.")
            return
        }
        
        
        let db = Firestore.firestore()
        let userRef = db.collection("users").document(userID)
        
        userRef.getDocument { (document, error) in
            if let document = document, document.exists {
                
                // El documento existe, puedes acceder a los datos del usuario
                if let userData = document.data(),
                   let firstname = userData["firstname"] as? String,
                   let lastname = userData["lastname"] as? String {
                    DispatchQueue.main.async {
                        self.nameLabel.text = "Nombre: \(firstname)"
                        self.emailLabel.text = "Apellido: \(lastname)"
                        
                        print("El nombre es: ", firstname)
                    }
                } else {
                    print("Error: firstname es nulo o vacío")
                }
            } else {
                print("Error al obtener datos del usuario:")
                if let error = error {
                    print("Mensaje de error:", error.localizedDescription)
                    print("Código de error:", (error as NSError).code)
                } else {
                    print("Desconocido")
                }
            }
        }
    }
}

