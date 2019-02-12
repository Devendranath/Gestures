//
//  ViewController.swift
//  Gestures
//
//  Created by apple on 12/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func screenEdge(_ sender: Any) {
        print("Screen Edge")
    }
    
    @IBAction func gestureRec(_ sender: Any) {
        print(sender)
    }
    @IBAction func longPress(_ sender: Any) {
        let actionSheet = UIAlertController(title: "Some Title", message: "Some messge", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        actionSheet.addAction(action)
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func zoomAction(_ sender: Any) {
        print("Panning")
    }
    
    var counter = 2
    
    @IBAction func rightSwipe(_ sender: Any) {
        let imageName = "000\(counter)"
        imageview.image = UIImage(named: imageName)
        counter += 1
    }
    @IBAction func userTapped(_ sender: Any) {
        imageview.image = UIImage(named: "0002")
    }
    
    @IBAction func rotate(_ sender: Any) {
        print("rotate")
    }
    
    @IBAction func pan(_ sender: Any) {
        print("Panning")
    }
    
    @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

