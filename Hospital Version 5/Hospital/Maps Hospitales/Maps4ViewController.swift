//
//  Maps2ViewController.swift
//  Servicios
//
//  Created by Elian Rueda on 07/02/23.
//

import UIKit
import MapKit

class Maps4ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 19.224529772230515, longitude: -96.243153245085)
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 19.20385425092089, longitude: -96.1605770604252)
      
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 19.18092694050334, longitude: -96.13393556651698)
    
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 19.165854980322518, longitude: -96.15433515423034)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 19.141631350893338, longitude: -96.13946843381811)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(latitude: 19.17461234364977, longitude: -96.15405173126332)
        
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2D(latitude: 19.189185658717147, longitude: -96.14795336899394)
        
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2D(latitude: 19.179436320461633, longitude: -96.17364009538862)
        
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = CLLocationCoordinate2D(latitude: 19.180867655741395, longitude: -96.16455116342037)
        
        let annotation10 = MKPointAnnotation()
        annotation10.coordinate = CLLocationCoordinate2D(latitude: 19.20963112402118, longitude: -96.19555362817258)
 
        let annotation11 = MKPointAnnotation()
        annotation11.coordinate = CLLocationCoordinate2D(latitude: 19.136348900321476, longitude: -96.13897546270165)
        
        let annotation12 = MKPointAnnotation()
        annotation12.coordinate = CLLocationCoordinate2D(latitude: 19.20203045272641, longitude: -96.21861836165083)
        
        let annotation13 = MKPointAnnotation()
        annotation13.coordinate = CLLocationCoordinate2D(latitude: 19.168101086658805, longitude: -96.14278573148535)
        
        let annotation14 = MKPointAnnotation()
        annotation14.coordinate = CLLocationCoordinate2D(latitude: 19.191272324315545, longitude: -96.18112292292142)
        
        let annotation15 = MKPointAnnotation()
        annotation15.coordinate = CLLocationCoordinate2D(latitude: 19.208468370924226, longitude: -96.21676474857917)
        
        let annotation16 = MKPointAnnotation()
        annotation16.coordinate = CLLocationCoordinate2D(latitude: 19.216699974068167, longitude: -96.22605123649906)
        
        let annotation17 = MKPointAnnotation()
        annotation17.coordinate = CLLocationCoordinate2D(latitude: 19.187653662014412, longitude: -96.16944726112307)
        
        let annotation18 = MKPointAnnotation()
        annotation18.coordinate = CLLocationCoordinate2D(latitude: 19.209558895242694, longitude: -96.1792197562495)
        
        let annotation19 = MKPointAnnotation()
        annotation19.coordinate = CLLocationCoordinate2D(latitude: 19.200626696181253, longitude: -96.20257622033017)
        
        let annotation20 = MKPointAnnotation()
        annotation20.coordinate = CLLocationCoordinate2D(latitude: 19.179439872372765, longitude: -96.17364347571332)
        
        let annotation21 = MKPointAnnotation()
        annotation21.coordinate = CLLocationCoordinate2D(latitude: 19.201981975493, longitude: -96.21871475229942)

        
        annotation.title = "Hospital"
        annotation.subtitle = "Colinas de Santa Fe"
        
        annotation2.title = "Hospital"
        annotation2.subtitle = "Veracruz Norte"
        
        annotation3.title = "Hospital"
        annotation3.subtitle = "Ignacio Zaragoza"
        
        annotation4.title = "Hospital"
        annotation4.subtitle = "Coyol"
        
        annotation5.title = "Hospital"
        annotation5.subtitle = "Ejercito Mexicano, Francisco Villa"
        
        annotation6.title = "Hospital"
        annotation6.subtitle = "Pocitos y Rivera"
        
        //Revisar
        annotation7.title = "Hospital"
        annotation7.subtitle = "Esteban Morales"
        
        annotation8.title = "Hospital"
        annotation8.subtitle = "Dos Caminos"
        
        annotation9.title = "Hospital"
        annotation9.subtitle = "Flor de Mayo"
        
        annotation10.title = "Hospital"
        annotation10.subtitle = "Lomas de Río medio"
        
        annotation11.title = "Hospital"
        annotation11.subtitle = "Rio Nilo, Las Vegas"
        
        annotation12.title = "Hospital"
        annotation12.subtitle = "Paseo de Oasis"
        
        annotation13.title = "Hospital"
        annotation13.subtitle = "Adolfo Ruiz Cortines"
        
        annotation14.title = "Hospital"
        annotation14.subtitle = "Tarimoya"
        
        annotation15.title = "Hospital"
        annotation15.subtitle = "Costa Dorada"
        
        annotation16.title = "Hospital"
        annotation16.subtitle = "Geovillas los Pinos"
        
        annotation17.title = "Hospital"
        annotation17.subtitle = "Yanez"
        
        annotation18.title = "Hospital"
        annotation18.subtitle = "Playa Linda"
        
        annotation19.title = "Hospital"
        annotation19.subtitle = "Romain"
        
        annotation20.title = "Hospital"
        annotation20.subtitle = "Dos Caminos"
        
        annotation21.title = "Hospital"
        annotation21.subtitle = "Oasis"
        
        mapView.addAnnotation(annotation)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.addAnnotation(annotation4)
        mapView.addAnnotation(annotation5)
        mapView.addAnnotation(annotation6)
        mapView.addAnnotation(annotation7)
        mapView.addAnnotation(annotation8)
        mapView.addAnnotation(annotation9)
        mapView.addAnnotation(annotation10)
        mapView.addAnnotation(annotation11)
        mapView.addAnnotation(annotation12)
        mapView.addAnnotation(annotation13)
        
        mapView.addAnnotation(annotation14)
        mapView.addAnnotation(annotation15)
        mapView.addAnnotation(annotation16)
        mapView.addAnnotation(annotation17)
        mapView.addAnnotation(annotation18)
        mapView.addAnnotation(annotation19)
        mapView.addAnnotation(annotation20)
        mapView.addAnnotation(annotation21)
        
    }
}
