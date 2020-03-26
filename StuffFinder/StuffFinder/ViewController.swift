//
//  ViewController.swift
//  StuffFinder
//
//  Created by jayjay venegas on 3/23/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//
import MapKit
import UIKit

class ViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var xrdsButton: UIButton!
    
    @IBOutlet weak var mammothButton: UIButton!
    
    @IBOutlet weak var HawaiiButton: UIButton!
    
    let CROSSROADS_LAT = 34.0240892
       
    let CROSSROADS_LONG = -118.4747321
    
    let MAMMOTH_LAT = 37.647190
    
    let MAMMOTH_LONG = -118.967453
    
    let HAWAII_LAT = 19.6400
        
    let HAWAII_LONG = 155.9969
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapView.delegate = self
               let point = MKMapPoint(CLLocationCoordinate2D(latitude: CROSSROADS_LAT, longitude: CROSSROADS_LONG))
               let size = MKMapSize(width: 1000, height: 1000)
               let rect = MKMapRect(origin: point, size: size)
               mapView.setRegion(MKCoordinateRegion(rect), animated: true)
    }

    @IBAction func Xrds(_ sender: Any) {
        mapView.delegate = self
              let point = MKMapPoint(CLLocationCoordinate2D(latitude: CROSSROADS_LAT, longitude: CROSSROADS_LONG))
              let size = MKMapSize(width: 1000, height: 1000)
              let rect = MKMapRect(origin: point, size: size)
              mapView.setRegion(MKCoordinateRegion(rect), animated: true)
    }
    
    @IBAction func Mammoth(_ sender: Any)
    {
        mapView.delegate = self
              let point = MKMapPoint(CLLocationCoordinate2D(latitude: MAMMOTH_LAT, longitude: MAMMOTH_LONG))
              let size = MKMapSize(width: 1000, height: 1000)
              let rect = MKMapRect(origin: point, size: size)
              mapView.setRegion(MKCoordinateRegion(rect), animated: true)
    }
    @IBAction func Hawaii(_ sender: Any) {
        mapView.delegate = self
                    let point = MKMapPoint(CLLocationCoordinate2D(latitude: HAWAII_LAT, longitude: HAWAII_LONG))
                    let size = MKMapSize(width: 1000, height: 1000)
                    let rect = MKMapRect(origin: point, size: size)
                    mapView.setRegion(MKCoordinateRegion(rect), animated: true)
    }
    
    @IBAction func ZoomOut(_ sender: Any) {
        Zoom(1)
    }
    
    @IBAction func ZoomIN(_ sender: Any) {
        Zoom(-1)
    }
    
    func Zoom (_ exp: Double) {
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
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
          let rect = mapView.visibleMapRect
          let xrdsLoc = CLLocationCoordinate2D(latitude: CROSSROADS_LAT, longitude: CROSSROADS_LONG)
          let xrdsPoint = MKMapPoint(xrdsLoc)
          
          let mammothLoc = CLLocationCoordinate2D(latitude: MAMMOTH_LAT, longitude: MAMMOTH_LONG)
          let mammothPoint = MKMapPoint(mammothLoc)
          
          let hawaiiLoc = CLLocationCoordinate2D(latitude: HAWAII_LAT, longitude: HAWAII_LONG)
          let hawaiiPoint = MKMapPoint(hawaiiLoc)
          
          if rect.contains(xrdsPoint) {
         label.text = "You found Crossroads!"
              xrdsButton.backgroundColor = UIColor(red: 0/255, green: 250/255, blue: 0/255, alpha: 0.5)
              HawaiiButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
              mammothButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
          } else if rect.contains(mammothPoint) {
             label.text = "You found Mammoth!"
              mammothButton.backgroundColor = UIColor(red: 0/255, green: 250/255, blue: 0/255, alpha: 0.5)
              HawaiiButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
              xrdsButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
          } else if rect.contains(hawaiiPoint) {
              label.text = "You found Hawaii!"
              HawaiiButton.backgroundColor = UIColor(red: 0/255, green: 250/255, blue: 0/255, alpha: 0.5)
              xrdsButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
              mammothButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
          } else {
              label.text = "Where are you?"
              xrdsButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
              mammothButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
              HawaiiButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
              
          }
      }
}

