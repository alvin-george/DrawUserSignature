//
//  ViewController.swift
//  DrawSignatureSaver


import UIKit

class ViewController: UIViewController, DrawSignatureDelegate {

    @IBOutlet weak var sampleSignatureView: DrawSignatureView!
    
    @IBOutlet weak var savedSignatureImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sampleSignatureView.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        sampleSignatureView.backgroundColor =  UIColor.lightGray
    }
    @IBAction func clearSignature(_ sender: Any) {
        
        sampleSignatureView.clear()
        savedSignatureImage.image = nil
        
        
    }
    @IBAction func saveSignatureImage(_ sender: Any) {
        
        if sampleSignatureView.doesContainSignature {
            let savedImage = sampleSignatureView.getCroppedSignature()
            // Do something with img
            savedSignatureImage.image =  savedImage
            self.viewWillAppear(true)
        } else {
     }
    }
    
    // Optional delegate methods
    func startedDrawing() {
        // Do something when start drawing
    }
    
    func finishedDrawing() {
        // Do something else when finished drawing
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

