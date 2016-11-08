//
//  TapBarViewController.swift
//  Tumblr
//
//  Created by Sophia KC on 07/11/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class TapBarViewController: UIViewController {

    // Outlets
    
    // behaves like a container
    @IBOutlet weak var contentView: UIView!
    
    // Outlets for the VC to be presented in contentView
    
    
    
    // Variables
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var activityViewController: UIViewController!
    var tapBarViewController: UIViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        
        // ViewController: Home
        homeViewController = main.instantiateViewController(withIdentifier: "HomeViewController")
        homeViewController.view.frame = contentView.bounds
        addChildViewController(homeViewController)
            // take the view and add it in my contentView
        contentView.addSubview(homeViewController.view)
        
        // ViewController: Search
        searchViewController = main.instantiateViewController(withIdentifier: "SearchViewController")
        searchViewController.view.frame = contentView.bounds
        addChildViewController(searchViewController)
        contentView.addSubview(searchViewController.view)
        
        // ViewController: Compose
        composeViewController = main.instantiateViewController(withIdentifier: "ComposeViewController")
        composeViewController.view.frame = contentView.bounds
        addChildViewController(composeViewController)
        contentView.addSubview(composeViewController.view)
        
        // ViewController: Account
        accountViewController = main.instantiateViewController(withIdentifier: "AccountViewController")
        accountViewController.view.frame = contentView.bounds
        addChildViewController(accountViewController)
        contentView.addSubview(accountViewController.view)
        
        // ViewController: Activity
        activityViewController = main.instantiateViewController(withIdentifier: "ActivityViewController")
        activityViewController.view.frame = contentView.bounds
        addChildViewController(activityViewController)
        contentView.addSubview(activityViewController.view)
        
        
    }
    
    
    @IBAction func didTapHome(_ sender: UIButton) {
        
    }
    
    
    @IBAction func didTapSearch(_ sender: UIButton) {
    }
    
    @IBAction func didTapCompose(_ sender: UIButton) {
    }
    
    
    @IBAction func didTapAccount(_ sender: UIButton) {
    }
    
    
    @IBAction func didTapActivity(_ sender: UIButton) {
    }
    

    

}



//@IBAction func didTapRedButton(_ sender: AnyObject) {
//    
//    //        orangeViewController.view.removeFromSuperview()
//    //        orangeViewController.willMove(toParentViewController: nil)
//    //        orangeViewController.removeFromParentViewController()
//    //
//    //        addChildViewController(redViewController)
//    //        containerView.addSubview(redViewController.view)
//    //        redViewController.didMove(toParentViewController: self)
//    
//    // how much we scroll from origin position
//    containerView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
//}
//
//@IBAction func didTapOrange(_ sender: AnyObject) {
//    containerView.setContentOffset(CGPoint(x: containerView.frame.size.width * 2, y: 0) , animated: true)
//}
//
//@IBAction func didTapGreenButton(_ sender: AnyObject) {
//    containerView.setContentOffset(CGPoint(x: containerView.frame.size.width, y: 0) , animated: true)
//}
//
//
//
//
//}
