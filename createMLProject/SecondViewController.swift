//
//  SecondViewController.swift
//  createMLProject
//
//  Created by Koray Şahin on 17.04.2023.
//

import UIKit
import CoreML
import Vision

class SecondViewController: UIViewController,ImagePickerDelegate {
    func didSelect(image: UIImage?) {
        self.imageView.image = image
    }
     
    


    var imagePicker: ImagePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = ImagePicker(presentationController: self, delegate: self)
        txtOutput.text = "Select the 'Camera' Button. Choose a hero in your gallery and let the phone say who it is."
    }
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var txtOutput: UITextView!
    
    @IBAction func buttonCamera(_ sender: UIButton) {
        if imageView.image == nil {
            self.imagePicker.present(from: sender)
        }
        else {
            updateClassificationa(for: imageView.image!)
        }
        
    }
  // Setup kurulumu
    lazy var classificationRequest: VNCoreMLRequest = {
        do {
            let model = try VNCoreMLModel(for: LordOfTheRingsImageClassifier_1().model)
            let request = VNCoreMLRequest(model: model, completionHandler: { [weak self] request, error in
                self?.processClassifications(for: request, error: error)
            })
            request.imageCropAndScaleOption = .centerCrop
            return request
        }
        catch {
            fatalError("Failed to load Vision ML Model: \(error)")
        }
    }()
    
    // Perform REQUESTS
    func updateClassificationa(for image: UIImage) {
        txtOutput.text = "Classifying.."
        
        let ciImage = CIImage(image: image)
        let handler = VNImageRequestHandler(ciImage: ciImage!, orientation: .up)

        do {
            try handler.perform([self.classificationRequest])
        }
        catch {
            print("Failed to perform classification. \n\(error.localizedDescription)")
        }
    }
    // Update Interface with results from Classification
    
    func processClassifications(for request: VNRequest, error: Error?) {
        let classifications = request.results as! [VNClassificationObservation]
        
        if classifications.isEmpty {
            txtOutput.text = "Nothing recognized."
        }
        else {
            let identifier1 = classifications[0].identifier + ": "
            let confidence1 = String(classifications[0].confidence.rounded()) + "\n"
            
            
            let identifier2 = classifications[1].identifier + ": "
             let confidence2 = String(classifications[1].confidence.rounded()) + "\n"

        
            txtOutput.text = "Classification: \n" + identifier1 + confidence1 + identifier2 + confidence2

        }
        
    }
    
}
