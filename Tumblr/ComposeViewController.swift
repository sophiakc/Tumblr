//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Sophia KC on 07/11/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    
    
    // Variables
    var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hidden state
//        for button in buttons {
//            button.transform = CGAffineTransform(translationX: 0, y: view.frame.height - button.frame.origin.y)
        }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    

    @IBAction func didTapNevermind(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    
    
}
