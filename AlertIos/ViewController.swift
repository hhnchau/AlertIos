//
//  ViewController.swift
//  AlertIos
//
//  Created by Kingpes on 8/5/18.
//  Copyright © 2018 Kingpes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    @IBAction func btnShowAlert(_ sender: Any) {
        var alertController: UIAlertController?
        alertController = UIAlertController(title: "Alert", message: "Are you sure?", preferredStyle: .alert) //Center
        //alertController = UIAlertController(title: "Alert", message: "Are you sure?", preferredStyle: .actionSheet) //Bottom
        let cancel = UIAlertAction(title: "Cancel", style: .destructive){ (action) in
            print("Press Cancel")
        }
        let ok = UIAlertAction(title: "OK", style: .default){ (action) in
            print("Press OK")
        }
        
        alertController?.addAction(cancel)
        alertController?.addAction(ok)
        
        self.present(alertController!, animated: true){
            print("Alert Show")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }

}

