//
//  AgendarViewController.swift
//  Hospital
//
//  Created by Elian Rueda on 22/11/23.
//

import UIKit
import Firebase

class AgendarViewController: ViewController, UITextViewDelegate {
    
    @IBOutlet weak var fechaConsultaPicker: UIDatePicker!
    
    @IBOutlet weak var hospitalTextField: UITextField!
    
    @IBOutlet weak var enfermedadTextField: UITextField!
    
    @IBOutlet weak var sintomasTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapToDismissKeyboard))
        view.addGestureRecognizer(tapGesture)

        // Asigna self como delegado para los campos de texto
        hospitalTextField.delegate = self.textFieldDelegate
        enfermedadTextField.delegate = self.textFieldDelegate
    }
    
    @IBAction func agregarDatosTapped(_ sender: Any) {
        guard let usuarioID = Auth.auth().currentUser?.uid else {
            print("Error: No hay usuario autenticado.")
            return
        
    }
        
    
        // Verifica si fechaHoraPicker no es nil y obtén la fecha y hora
        guard let fechaHora = fechaConsultaPicker?.date else {
            print("Error: Fecha y hora son nulas.")
            return
        }
        
        // Formatea la fecha y hora como string según tu necesidad
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let fechaHoraString = formatter.string(from: fechaHora)
        
        // Crea un diccionario con los datos a agregar
        let userData: [String: Any] = [
            "fechaHora": fechaHoraString,
            "hospital": hospitalTextField.text ?? "",
            "enfermedad": enfermedadTextField.text ?? "",
            "sintomas": sintomasTextView.text ?? ""
            // Puedes agregar otros campos según tus necesidades
        ]
        
        // Accede a la base de datos de Firestore
        let db = Firestore.firestore()
        
        // Actualiza o agrega los datos en el documento del usuario actual en la colección "users"
        db.collection("citas_medicas").document(usuarioID).setData(userData, merge: true) { error in
            if let error = error {
                print("Error al agregar datos: \(error.localizedDescription)")
            } else {
                print("Datos agregados exitosamente.")
                // Puedes realizar alguna acción adicional después de agregar los datos, si es necesario
            }
        }
    }
    
    // Función para ocultar el teclado al tocar en cualquier lugar de la pantalla
     @objc func tapToDismissKeyboard() {
         view.endEditing(true)
     }
     
    // Extensión específica para UITextFieldDelegate
       private let textFieldDelegate = TextFieldDelegate()

       // Implementa UITextFieldDelegate en una extensión
       private class TextFieldDelegate: NSObject, UITextFieldDelegate {
           func textFieldShouldReturn(_ textField: UITextField) -> Bool {
               textField.resignFirstResponder()
               return true
           }
       }
    
    
}
