


import UIKit
import UniformTypeIdentifiers
import MobileCoreServices
import Firebase
import FirebaseStorage

class Upload2ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let storage = Storage.storage()
    
    @IBOutlet weak var fileNameText2Field: UITextField!
    @IBOutlet weak var selectedFile2Label: UILabel!
    var selectedFileURL: URL?
    
    @IBAction func chooseFile2ButtonTapped(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .savedPhotosAlbum
        picker.mediaTypes = [UTType.data.identifier] // Aceptar cualquier tipo de archivo
        present(picker, animated: true, completion: nil)
    }

    @IBAction func uploadButtonTapped(_ sender: UIButton) {
        guard let fileURL = selectedFileURL else {
            return
        }

        guard let fileName = fileNameText2Field.text, !fileName.isEmpty else {
            return
        }

        uploadFile(fileURL: fileURL, fileName: fileName)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        dismiss(animated: true, completion: nil)
        
        guard let fileURL = info[.imageURL] as? URL else {
            return
        }

        selectedFileURL = fileURL
        selectedFile2Label.text = fileURL.lastPathComponent
    }

    func uploadFile(fileURL: URL, fileName: String) {
        let storageRef = storage.reference()
        let fileRef = storageRef.child("archivos/doctores/\(fileName)")

        fileRef.putFile(from: fileURL, metadata: nil) { metadata, error in
            if let error = error {
                print("Error uploading file: \(error.localizedDescription)")
            } else {
                print("File uploaded successfully!")
            }
        }
    }
}
