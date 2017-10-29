//
//  WelcomeViewController.swift
//  SampleProject
//
//  Created by Jayven Nhan on 29/10/17.
//  Copyright © 2017 Jayven Nhan. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var signInButton: PrimaryButton!
    @IBOutlet weak var getStartedButton: SecondaryButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signInButtonDidTouch(_ sender: Any) {
        performSegue(withIdentifier: Constants.Segues.WelcomeToLogIn, sender: nil)
    }
    
    @IBAction func getStartedButtonDidTouch(_ sender: Any) {
        performSegue(withIdentifier: Constants.Segues.WelcomeToCourseSelection, sender: nil)
    }
    
}
