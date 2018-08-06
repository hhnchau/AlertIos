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
    
    override func viewDidAppear(_ animated: Bool) {
          let alert = UIAlertController(title: "Thong bao", message: "Vui long nhap thong tin", preferredStyle: .alert)
        
        alert.addTextField { (edtEmail) in
            edtEmail.placeholder = "Nhap email"
        }
        
        alert.addTextField { (edtPass) in
            edtPass.placeholder = "Nhap mat khau"
            edtPass.isSecureTextEntry = true
        }
        
        let btnOk: UIAlertAction = UIAlertAction(title: "OK", style: .default) { (btnOk) in
            let email: String = alert.textFields![0].text!
            let pass: String = alert.textFields![1].text!
            
            print(email, pass)
        }
        
        alert.addAction(btnOk)
        present(alert, animated: true, completion: nil)
    }

}

