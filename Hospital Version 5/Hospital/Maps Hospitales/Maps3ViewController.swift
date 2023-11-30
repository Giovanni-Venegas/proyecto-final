//
//  MapsViewController.swift
//  Servicios
//
//  Created by Elian Rueda on 07/02/23.
//

import UIKit
import MapKit

class Maps3ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 19.156543459933253, longitude: -96.11217549826634)
        
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 19.213552570853704, longitude: -96.1922511351931)

        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 19.209959576333866, longitude: -96.19568939328055)
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 19.21347568858915, longitude: -96.19224468872989)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 19.148343239562106, longitude: -96.12719916442373)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(latitude: 19.07820739766817, longitude: -96.09264703819233)

        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2D(latitude: 19.156671151135516, longitude: -96.11213171625079)
        
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2D(latitude: 19.076505104300928, longitude: -96.09286539884296)
        
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = CLLocationCoordinate2D(latitude: 19.50917590576469, longitude: -96.88174028556674)
        
        let annotation10 = MKPointAnnotation()
        annotation10.coordinate = CLLocationCoordinate2D(latitude: 19.541887794811824, longitude: -96.90732695275122)
        

        
        annotation.title = "Hospital"
        annotation.subtitle = "Jardines del Virginia"
        
        annotation2.title = "Hospital"
        annotation2.subtitle = "Vergara Tarimoya"
        
        annotation3.title = "Hospital"
        annotation3.subtitle = "Rio Medio"
        
        annotation4.title = "Hospital"
        annotation4.subtitle = "Fraccionamiento Lomas del Rio Medio"
        
        annotation5.title = "Hospital"
        annotation5.subtitle = "Primera de Mayo"
        
        annotation6.title = "Hospital"
        annotation6.subtitle = "Riviera Veracruzana"
        
        annotation7.title = "Hospital"
        annotation7.subtitle = "Jardines de Virginia"
        
        annotation8.title = "Hospital"
        annotation8.subtitle = "Carretera Federal Boca del Río"
        
        annotation9.title = "Hospital"
        annotation9.subtitle = "Xalapa Sur"
        
        annotation10.title = "Hospital"
        annotation10.subtitle = "Francisco Villa"
        

        
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
        
    }
}
