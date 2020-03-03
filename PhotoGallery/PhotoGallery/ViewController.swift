//
//  ViewController.swift
//  PhotoGallery
//
//  Created by jayjay venegas on 2/27/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    

    
    
    @IBOutlet weak var stackView: UIStackView!
    
    var takerController: UIImagePickerController!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var takeAPicture: UIButton!
    
    var imageNumber: Int?
    var totalPictures = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case.notDetermined:
            AVCaptureDevice.requestAccess(for: .video) {granted in if granted {
                }
                
            }
            
        default:
            return
        }
    }
    
    @IBAction func takePhoto(_ sender: Any) {
        takeIt()
    }
    
    
    
    func setupCaptureSession() {
        print("take a photo")
    }
    
    
    func takeIt() {
        takerController = UIImagePickerController()
        takerController.delegate = self
        takerController.sourceType = .camera
        present(takerController, animated: true, completion: nil)
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:[UIImagePickerController.InfoKey : Any]) {
        takerController.dismiss(animated: true, completion: nil)
      /*
        imageButton(image: info[.originalImage] as! UIImage)
           */
        
        let photo = info[.originalImage] as? UIImage
     
     
        addPhototoStack(image: photo!)
        
        // totalPictures += 1
        // add photo to button?
        }
    
// @objc func addButton() {
//      let newButton = UIButton()
//      newButton.setTitle("Explore", for: .normal)
//
//  newButton.setTitleColor(UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: 0), for: .normal)
//
//  newButton.addTarget(self, action: #selector(addPicture), for: .touchUpInside)
//
//
//      stackView.addArrangedSubview(newButton)
//  }
    
//    @objc func addPicture() {
//        let pictureName = ""
//        let newPicture = UIImage(named: pictureName)
//        let imageView = UIImageView(image: newPicture!)
//        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
//        stackView.addArrangedSubview(imageView)
//
//    }
    

    
//    func imageButton(image: UIImage){
//
//        let newButton = UIButton()
//        newButton.setImage(image, for: .normal)
//        newButton.setTitle("photo", for: .normal)
//        stackView.addArrangedSubview(newButton)
//
//    }
    
    
    func addPhototoStack(image: UIImage) {
       let newButton = UIButton()
            newButton.setImage(image, for: .normal)
        newButton.frame = CGRect(x: 0, y: 0, width: 320, height: 120)
        newButton.setTitle("photo", for: .normal)
        newButton.setTitleColor(UIColor .white, for: .normal)
        stackView.addArrangedSubview(newButton)
   
        stackView.frame = CGRect(x: 0, y: 150, width: 200, height: (totalPictures * 200))
           
        scrollView.contentSize = CGSize(width: 400, height: (totalPictures * 200))

    }
    
}

