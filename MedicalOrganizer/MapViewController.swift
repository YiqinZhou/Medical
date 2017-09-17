//
//  MapViewController.swift
//  MedicalOrganizer
//
//  Created by ZhouYiqin on 9/16/17.
//  Copyright © 2017 Yiqin Zhou. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var Map: MKMapView!
    
    
    let regionRadius: CLLocationDistance = 4000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        Map.setRegion(coordinateRegion, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 36.038, longitude: -78.900)
        centerMapOnLocation(location: initialLocation)

       
        // Do any additional setup after loading the view.
        
        // show artwork on map
        let artwork = Clinics(title: "CVS Pharmacy",
                              locationName: "pharmacy",
                              discipline: "Immunization",
                              coordinate: CLLocationCoordinate2D(latitude: 36.039581, longitude: -78.899708))
        Map.addAnnotation(artwork)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}




