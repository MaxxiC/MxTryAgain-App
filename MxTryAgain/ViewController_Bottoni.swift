//
//  ViewController_Bottoni.swift
//  MxTryAgain
//
//  Created by Massimiliano on 11/01/2019.
//  Copyright © 2019 Massimiliano. All rights reserved.
//

import UIKit

class ViewController_Bottoni: UIViewController {
    
    @IBOutlet var ViewBottoni: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewBottoni.backgroundColor = coloreSfondo
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func bntRedPress(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.ViewBottoni.backgroundColor = #colorLiteral(red: 1, green: 0.3098039216, blue: 0.2666666667, alpha: 1)
        }
        coloreSfondo = ViewBottoni.backgroundColor!
    }
    
    @IBAction func btnGreenPress(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.ViewBottoni.backgroundColor = #colorLiteral(red: 0.2352941176, green: 1, blue: 0.3333333333, alpha: 1)
        }
        coloreSfondo = ViewBottoni.backgroundColor!
    }
    
    @IBAction func btnBluPress(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.ViewBottoni.backgroundColor = #colorLiteral(red: 0.07843137255, green: 0.5568627451, blue: 1, alpha: 1)
        }
        coloreSfondo = ViewBottoni.backgroundColor!
    }
    
    @IBAction func btnRandomPress(_ sender: Any) {
        //Sfondo generato da colore RGB casuale
        let num1 = Int.random(in: 0..<256)
        let num2 = Int.random(in: 0..<256)
        let num3 = Int.random(in: 0..<256)
        UIView.animate(withDuration: 0.5) {
            self.ViewBottoni.backgroundColor = UIColor.init(red: CGFloat(num1/255), green: CGFloat(num2/255), blue: CGFloat(num3/255), alpha: 1)
        }
        coloreSfondo = ViewBottoni.backgroundColor!
    }
    
    @IBAction func btnPredefPress(_ sender: Any) {
        ViewBottoni.backgroundColor = UIColor.init(red: 34/255, green: 31/255, blue: 76/255, alpha: 1)
        coloreSfondo = ViewBottoni.backgroundColor!
    }
    
}
