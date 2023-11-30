//
//  DownloadViewController.swift
//  Hospital
//
//  Created by Elian Rueda on 23/11/23.
//

import UIKit
import Firebase
import FirebaseStorage

class DownloadViewController: UIViewController {
    
    let storage = Storage.storage()
    
    @IBOutlet weak var fileNameTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView! // Agrega una UIImageView a tu interfaz de usuario
    
    @IBAction func downloadButtonTapped(_ sender: UIButton) {
        guard let fileName = fileNameTextField.text, !fileName.isEmpty else {
            // Manejar el caso en que no se haya ingresado un nombre
            return
        }

        downloadFile(fileName: fileName)
    }

    func downloadFile(fileName: String) {
        let storageRef = storage.reference()
        let fileRef = storageRef.child("archivos/doctores/\(fileName)")

        let localURL = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName)

        fileRef.write(toFile: localURL) { url, error in
            if let error = error {
                // Manejar el error
                print("Error downloading file: \(error.localizedDescription)")
            } else {
                // Éxito
                print("File downloaded successfully! Local URL: \(localURL)")

                // Verificar si el archivo descargado es una imagen antes de mostrarla
                if let imageData = try? Data(contentsOf: localURL), let image = UIImage(data: imageData) {
                    DispatchQueue.main.async {
                        // Mostrar la imagen en la UIImageView
                        self.imageView.image = image
                    }
                } else {
                    print("El archivo descargado no es una imagen válida.")
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Agregar un gesto para ocultar el teclado al tocar en cualquier lugar de la pantalla
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }

    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}
