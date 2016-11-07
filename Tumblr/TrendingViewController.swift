//
//  TrendingViewController.swift
//  Tumblr
//
//  Created by Sophia KC on 07/11/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    // Outlets
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 1209)

        
    }

    

}
