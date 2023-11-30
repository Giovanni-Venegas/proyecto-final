//
//  WalmartViewController.swift
//  Servicios
//
//  Created by Elian Rueda on 07/02/23.
//

import UIKit

class Hospital1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var policias = ["Hospital, Av.Viveros", "Hospital, Vergara Tarimoya", "Hospital, Río Magdalena", "Hospital, Fraccionamiento Lomas del Río Medio", "Hospital, Primera de Mayo", "Hospital, Ribiera Vaeracruzana", "Hospital, Jardines de Virginia", "Hospital, Carretera Federal Boca del Río", "Hospital, Xalapa Sur", "Hospital, Lázaro Cárdenas", "Hospital, Plaza Valle", "Hospital Córdoba"]
    
    @IBOutlet weak var tablaPolicias: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablaPolicias.delegate = self
        tablaPolicias.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return policias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let celda =  tablaPolicias.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        celda.textLabel?.text = policias[indexPath.row]
        celda.detailTextLabel?.text = "800 000 0096"
        
        return celda
    }

}
