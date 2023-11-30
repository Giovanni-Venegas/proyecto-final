//
//  MenuDoctorViewController.swift
//  Hospital
//
//  Created by Elian Rueda on 21/11/23.
//

import UIKit

class MenuDoctorViewController: ViewController {
    @IBOutlet weak var pacientesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func pacientesButton(_ sender: Any) {
        // Instancia el ViewControllerB desde el .xib
        let listViewController = ListViewController(nibName: "ListViewController", bundle: nil)

        // Presenta el ViewControllerB
        self.present(listViewController, animated: true, completion: nil)
        
    }
    

}
