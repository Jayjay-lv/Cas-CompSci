//
//  ViewController.swift
//  FirstARApp
//
//  Created by jayjay venegas on 3/9/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit
import SceneKit
import ARKit


class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet weak var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        sceneView.delegate = self
        // Do any additional setup after loading the view.
        
       let scene = SCNScene(named: "arresources.scnassets/blank.scn")
        
        sceneView.scene = scene!
        
       
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
        
        let configuration = ARImageTrackingConfiguration()
         setTrackingImages("TargetImages", for: configuration)
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        sceneView.session.pause()
    }
    
    
    func setTrackingImages(_ groupName: String, for configuration: ARImageTrackingConfiguration){
      
      guard let trackingImages = ARReferenceImage.referenceImages(inGroupNamed: groupName, bundle: .main) else {
               print("No images found to add to tracking")
               return
           }
           configuration.trackingImages = trackingImages
           configuration.maximumNumberOfTrackedImages = 3
        
    }
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
    
             print("image found")
         
         let node = SCNNode()
    
         return node
     }
        

   
    
    
}



