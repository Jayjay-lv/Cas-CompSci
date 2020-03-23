//
//  ViewController.swift
//  CamaraWithFilters
//
//  Created by jayjay venegas on 3/3/20.
//  Copyright © 2020 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
 
    
    
    var filter1 = "CISepiaTone"
    
    var filter2 = "CIPhotoEffectChrome"
    
    var filter3 = "CIPhotoEffectNoir"
    
    var photo: UIImage? = nil
    
    var  imagefilter = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.dismiss(animated: true, completion: nil)
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
       
        photo = image
        imageView.image = image
        
//        let inputImage = photo!
//        let context = CIContext(options: nil)
//
//
//        if let filter = CIFilter(name: "\(imagefilter)"){
//            let beginImage = CIImage(image: inputImage)
//            filter.setDefaults()
//            filter.setValue(beginImage, forKey: kCIInputImageKey)
//
//            if let output = filter.outputImage {
//                if let cgimg = context.createCGImage(output, from: output.extent){
//                    let processedImage = UIImage(cgImage: cgimg)
//                    imageView.image = processedImage
//                }
//            }
//        }
    }

 
    @IBAction func firstFilter(_ sender: Any) {
       // imagefilter = filter1
        
        guard let inputImage = photo else {
            return
        }
           let context = CIContext(options: nil)
           
           
           if let filter = CIFilter(name: "CIPhotoEffectNoir"){
               let beginImage = CIImage(image: inputImage)
               filter.setDefaults()
               filter.setValue(beginImage, forKey: kCIInputImageKey)
           
               if let output = filter.outputImage {
                   if let cgimg = context.createCGImage(output, from: output.extent){
                       let processedImage = UIImage(cgImage: cgimg)
                       imageView.image = processedImage
                   }
               }
           }
    }
    
    @IBAction func secondFilter(_ sender: Any) {
//        imagefilter = filter2
        
         guard let inputImage = photo else {
                    return
                }
           let context = CIContext(options: nil)
           
           
           if let filter = CIFilter(name: "CISepiaTone"){
               let beginImage = CIImage(image: inputImage)
               filter.setDefaults()
               filter.setValue(beginImage, forKey: kCIInputImageKey)
           
               if let output = filter.outputImage {
                   if let cgimg = context.createCGImage(output, from: output.extent){
                       let processedImage = UIImage(cgImage: cgimg)
                       imageView.image = processedImage
                   }
               }
           }
    }
    
    
    @IBAction func thirdFilter(_ sender: Any) {
      //  imagefilter = filter3
        
        guard let inputImage = photo else {
                   return
               }
           let context = CIContext(options: nil)
           
           
           if let filter = CIFilter(name: "CIPhotoEffectChrome"){
               let beginImage = CIImage(image: inputImage)
               filter.setDefaults()
               filter.setValue(beginImage, forKey: kCIInputImageKey)
           
               if let output = filter.outputImage {
                   if let cgimg = context.createCGImage(output, from: output.extent){
                       let processedImage = UIImage(cgImage: cgimg)
                       imageView.image = processedImage
                   }
               }
           }
    }
    
    
    @IBAction func launchPhotoPicker(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
            
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            
            
            self.present(imagePicker, animated: true, completion: nil)
        }
        
    }
    
}

