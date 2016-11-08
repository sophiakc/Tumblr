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
    @IBOutlet var buttons: [UIButton]!
    
    
    // Outlets for the VC to be presented in contentView
    
    
    
    // Variables
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var activityViewController: UIViewController!
    var tapBarViewController: UIViewController!
    
    // Define a variable for an array to hold the ViewControllers
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    var fadeTransition: FadeTransition!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        
        // instantiate each ViewController by referencing main and the particular ViewController's Storyboard ID
        // Reminder: instantiate == performing segue
        homeViewController = main.instantiateViewController(withIdentifier: "HomeViewController")
        searchViewController = main.instantiateViewController(withIdentifier: "SearchViewController")
        accountViewController = main.instantiateViewController(withIdentifier: "AccountViewController")
        activityViewController = main.instantiateViewController(withIdentifier: "ActivityViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, activityViewController]
        
        
        // set the button state and call the didPressTab method. We will plug in buttons[selectedIndex] as arguments in the didPressTab method to specify the initial button, since we haven't actually "tapped" a button yet and there is no sender to access.
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
        
        
    }

    
    @IBAction func didPressTab(_ sender: UIButton) {
        
        
        //----------- Get Access to the Previous and Current Tab Button
        // keep track of the previous button
        let previousIndex = selectedIndex
        
        // tag value of which ever button was tapped
        selectedIndex = sender.tag
        
        
        
        
        //----------- Remove the Previous ViewController and Set Button State
        // access previous button and set it to the non-selected state
        buttons[previousIndex].isSelected = false
        
        // use previousIndex to access the previous ViewController from the viewControllers array
        let previousVC = viewControllers[previousIndex]
        
        // Remove the previous ViewController
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        
        
        
        //----------- Add the New ViewController and Set Button State.
        // access your current selected button and set it to the selected state
        sender.isSelected = true
        
        // use selectedIndex to access the current ViewController from the viewControllers array
        let vc = viewControllers[selectedIndex]
        
        // Add the new ViewController.  (Calls the viewWillAppear method of the ViewController you are adding)
        addChildViewController(vc)
        
        // Adjust the size of the ViewController view you are adding to match the contentView of your tabBarViewController and add it as a subView of the contentView.
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        // Call the viewDidAppear method of the ViewController you are adding using didMove(toParentViewController: self).
        vc.didMove(toParentViewController: self)

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController
        let destinationViewController = segue.destination
        
        
        // Set the modal presentation style of your destinationViewController to be custom
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.5
        print("fadeIn called")
    }
    
    
    
}
