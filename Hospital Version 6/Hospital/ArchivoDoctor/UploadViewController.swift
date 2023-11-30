import UIKit
import UniformTypeIdentifiers
import MobileCoreServices
import Firebase
import FirebaseStorage

class UploadViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let storage = Storage.storage()
    
    @IBOutlet weak var fileNameTextField: UITextField!
    @IBOutlet weak var selectedFileLabel: UILabel!
    var selectedFileURL: URL?
    
    @IBAction func chooseFileButtonTapped(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .savedPhotosAlbum
        picker.mediaTypes = [UTType.image.identifier, UTType.pdf.identifier] // Utiliza las constantes directamente
        present(picker, animated: true, completion: nil)
    }

    @IBAction func uploadButtonTapped(_ sender: UIButton) {
        guard let fileURL = selectedFileURL else {
            return
        }

        guard let fileName = fileNameTextField.text, !fileName.isEmpty else {
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
        selectedFileLabel.text = fileURL.lastPathComponent
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
