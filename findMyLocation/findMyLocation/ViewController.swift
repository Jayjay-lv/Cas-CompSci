//
//  ViewController.swift
//  findMyLocation
//
//  Created by jayjay venegas on 3/26/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var distLabel: UILabel!
    
    var locationManager: CLLocationManager!
      
      let xrds_LAT = 34.0240892
      let xrds_LONG = -118.4747321
      
    var dist: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         distLabel.text = "How far are you from Crossroads!"
        locationManager = CLLocationManager()
               locationManager.delegate = self
               locationManager.requestWhenInUseAuthorization()
               mapView.delegate = self
               let crossroadsCoord = CLLocationCoordinate2D(latitude: xrds_LAT, longitude: xrds_LONG)
               let point = MKMapPoint(crossroadsCoord)
               let size = MKMapSize(width: 1000, height: 1000)
               let rect = MKMapRect(origin: point, size: size)
               mapView.setRegion(MKCoordinateRegion(rect), animated: true)
        
    }

    @IBAction func ZoomOut(_ sender: Any) {
        Zoom(1)
    }
    
    
    @IBAction func ZoomIn(_ sender: Any) {
        Zoom(-1)
    }
    
    func Zoom(_ exp: Double) {
        /*
        // Uses MKMapRect to create and set region
        let factor = pow(2, exp)
        let rect = mapView.visibleMapRect
        let newSize = MKMapSize(width: rect.width * factor, height: rect.height * factor)
        let newRect = MKMapRect(origin: rect.origin, size: newSize)
        mapView.setRegion(MKCoordinateRegion(rect), animated: true)
        */
        // Uses MKCoordinateSpan to create and set region
        let region = mapView.region
        let newLat = region.span.latitudeDelta * pow(2, exp)
        let newLong = region.span.longitudeDelta * pow(2, exp)
        let newCoordinateSpan = MKCoordinateSpan(latitudeDelta: newLat, longitudeDelta: newLong)
        let newRegion = MKCoordinateRegion(center: region.center, span: newCoordinateSpan)
        mapView.setRegion(newRegion, animated: true)
    }
    
    
    @IBAction func findLocation(_ sender: Any) {
        locationManager.requestLocation()
    }
    
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        let rect = mapView.visibleMapRect
        let crossroadsLoc = CLLocationCoordinate2D(latitude: xrds_LAT, longitude: xrds_LONG)
        let crossroadsPoint = MKMapPoint(crossroadsLoc)
        if rect.contains(crossroadsPoint) {
            label.text = "You found Crossroads!"
        } else {
           label.text = "Where's Crossroads?"
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let span = mapView.region.span
        print(span)
        let coords = locations.suffix(1)[0].coordinate
        let newRegion = MKCoordinateRegion(center: coords, span: span)
        mapView.setRegion(newRegion, animated: true)
        
        
        
        let personalLat = coords.latitude
        let personalLong = coords.longitude
        
        let firstLoc = CLLocation(latitude: personalLat, longitude: personalLong)
        let secondLoc = CLLocation(latitude: xrds_LAT,longitude: xrds_LONG)
       
        dist = firstLoc.distance(from: secondLoc) * 0.000621371
        distLabel.text = "You are \(Int(dist!)) from Xrds, Would you like directions?"

     
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    
    
    
    
    
    
    

}

