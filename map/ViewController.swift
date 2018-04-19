//
//  ViewController.swift
//  map
//
//  Created by Dolfi Patel on 2017-07-27.
//  Copyright © 2017 Dolfi Patel. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            let location = CLLocationCoordinate2D(latitude: 43.7732574,longitude: -79.3380826)
            let span = MKCoordinateSpanMake(0.05, 0.05)
            let region = MKCoordinateRegion(center: location, span: span)
            
            mapView.setRegion(region, animated: true)
            
            // 4)
            let annotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Lambton College"
            annotation.subtitle = "in Toronto"
            mapView.addAnnotation(annotation)
            

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

