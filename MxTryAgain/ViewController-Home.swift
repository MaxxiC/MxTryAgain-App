//
//  ViewController.swift
//  MxTryAgain
//
//  Created by Massimiliano on 09/01/2019.
//  Copyright © 2019 Massimiliano. All rights reserved.
//

import UIKit

var nomeUtente = UIDevice.current.name
var coloreSfondo = UIColor.init(red: 34/255, green: 31/255, blue: 76/255, alpha: 1)
// RGB: 34314C

class ViewController_Home: UIViewController {
    
    
    @IBOutlet var ViewHome: UIView!
    @IBOutlet weak var lblHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblHello.text = "Ciao " + nomeUtente
        ViewHome.backgroundColor = coloreSfondo
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnUnoPress(_ sender: Any) {
        performSegue(withIdentifier: "showViewButtons", sender: self)
    }
    
    @IBAction func btnDuePress(_ sender: Any) {
        
    }
}

