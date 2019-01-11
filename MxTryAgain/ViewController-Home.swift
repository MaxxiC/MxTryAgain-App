//
//  ViewController.swift
//  MxTryAgain
//
//  Created by Massimiliano on 09/01/2019.
//  Copyright © 2019 Massimiliano. All rights reserved.
//

import UIKit
import FirebaseFirestore

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
        
        var red:   CGFloat = 0
        var green: CGFloat = 0
        var blue:  CGFloat = 0
        var alpha: CGFloat = 0
        coloreSfondo.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        let oggi = Calendar.current
        let hour = oggi.component(.hour, from: date)
        let minutes = oggi.component(.minute, from: date)
        let sec = oggi.component(.second, from: date)
        
        let data = formatter.string(from: date)
        let ora = String(hour) + ":" + String(minutes) + ":" + String(sec)
        let result = data + "--" + ora
        
        let dict : [String : Any] = ["Red": Int(red*255),
                                     "Green": Int(green*255),
                                     "Blue": Int(blue*255),
                                     "Giorno": result]
        
        let db = Firestore.firestore()
        //db.collection("log-RGB").document(result).setData(dict)
        db.collection("log-RGB").addDocument(data: dict)
    }
}

