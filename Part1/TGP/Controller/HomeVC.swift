//
//  ViewController.swift
//  TGP
//
//  Created by Keval Shah on 25/05/21.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var registerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(navigateToProfile))
        registerView.addGestureRecognizer(gesture)
        
    }
    
    @objc func navigateToProfile() {
        
        
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ProfileVC") as? ProfileVC {
            
            print("Navigating to Profile")
            self.present(vc, animated: true, completion: nil)
        }
    }
    
}

