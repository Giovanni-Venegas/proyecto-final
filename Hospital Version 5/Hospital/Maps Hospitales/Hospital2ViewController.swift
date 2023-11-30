//
//  BodegaAurreraViewController.swift
//  Servicios
//
//  Created by Elian Rueda on 07/02/23.
//

import UIKit

class Hospital2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var ambulancias = ["Hospital Veracruz Norte", "Hospital Ignacio Zaragoza", "Hospital Coyol", "Hospital , Pocitos y Rivera", "Hospital, Dos Caminos", "Hospital Esteban Morales", "Hospital, Flor de Mayo", "Hospital Lomas de Río Medio", "Hospital Paseo de Oasis", "Hospital, Adolfo Ruiz Cortines", "Hospital, Tarimoya", "Hospital, Costa Dorada", "Hospital, Geovillas los Pinos", "Hospital, Yanez", "Hospital, Playa Linda", "Hospital, Romain", "Hospital Dos Caminos", "Hospital, Oasis Veracruz", "Hospital Niños Heroes", "Hospital, Calzada Manuel de Jesús"]
    
    @IBOutlet weak var tablaAmbulancias: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablaAmbulancias.delegate = self
        tablaAmbulancias.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ambulancias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda =  tablaAmbulancias.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        celda.textLabel?.text = ambulancias[indexPath.row]
        celda.detailTextLabel?.text = "229 165 1475"
        
        return celda
    }

}
