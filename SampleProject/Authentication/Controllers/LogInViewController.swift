//
//  LogInViewController.swift
//  SampleProject
//
//  Created by Jayven Nhan on 29/10/17.
//  Copyright © 2017 Jayven Nhan. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var stackViewBottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        observeKeyboardNotifications()
    }
    
    deinit {
        removeObservers()
    }
    
    @IBAction func signInButtonDidTouch(_ sender: Any) {
        
    }

    @IBAction func cancelButtonDidTouch(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

// MARK: Observers
extension LogInViewController {
    func observeKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(LogInViewController.keyboardShow), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(LogInViewController.keyboardHide), name: .UIKeyboardWillHide, object: nil)
    }
    
    func removeObservers() {
        NotificationCenter.default.removeObserver(self)
    }
}

// MARK: Keyboard
extension LogInViewController {
    
    @objc func keyboardShow(notification: Notification) {
        guard let userInfo = notification.userInfo,
            let keyboardFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? CGRect,
            let keyboardDuration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? Double else { return }
        
        stackViewBottomConstraint.constant = keyboardFrame.height + 30
        
        UIView.animate(withDuration: keyboardDuration, delay: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    @objc func keyboardHide(notification: Notification) {
        guard let userInfo = notification.userInfo, let keyboardDuration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? Double else { return }
        
        stackViewBottomConstraint.constant = 200
        
        UIView.animate(withDuration: keyboardDuration, delay: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
}
