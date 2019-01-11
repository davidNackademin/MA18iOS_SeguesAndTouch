//
//  ViewController.swift
//  lektion2TouchAndSegue
//
//  Created by David Svensson on 2019-01-11.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let segueId = "segueToView2Id"
    
    @IBOutlet weak var bartImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        
        if let viewToPan = sender.view {
            viewToPan.center =  CGPoint(x: viewToPan.center.x + translation.x,
                                        y: viewToPan.center.y + translation.y)
        }
        
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
    
    @IBAction func bartTapped(_ sender: UITapGestureRecognizer) {
        print("bart")
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        print("tryckt")
        performSegue(withIdentifier: segueId, sender: self)
        
    }
    
    @IBAction func unwindToView1(segue: UIStoryboardSegue) {
        
        
        
    }
    
    
}

