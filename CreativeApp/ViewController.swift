//
//  ViewController.swift
//  CreativeApp
//
//  Created by KEVIN KOCH on 9/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var imageButtonOutlet: UIButton!
    @IBOutlet weak var lengthOutlet: UITextField!
    @IBOutlet weak var widthOutlet: UITextField!
    @IBOutlet weak var heightOutlet: UITextField!
    @IBOutlet weak var volumeOutlet: UILabel!
    @IBOutlet weak var baseOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calc(_ sender: UIButton) {
        volumeOutlet.text = ("Your volume is: \(((Double(lengthOutlet.text!)! * Double(widthOutlet.text!)! * Double(heightOutlet.text!)!)/3)) units")
    }
    @IBAction func calc2(_ sender: UIButton) {
        baseOutlet.text = ("Your base area is: \((Double(lengthOutlet.text!)! * Double(widthOutlet.text!)!)) units")
    }
    
    
    @IBAction func showImage(_ sender: UIButton) {
        if( imageButtonOutlet.titleLabel!.text == "Show Image"){
        imageOutlet.isHidden = false
        imageButtonOutlet.setTitle("Hide Image", for: .normal)
        }
        if( imageButtonOutlet.titleLabel!.text == "Hide Image"){
        imageOutlet.isHidden = true
        imageButtonOutlet.setTitle("Show Image", for: .normal)
        }
        
    }
    

}

