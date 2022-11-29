//
//  ViewController.swift
//  TempCalculator
//
//  Created by Cambrian on 2022-11-28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cTextField: UITextField!
    @IBOutlet weak var kTextField: UITextField!
    @IBOutlet weak var fTextField: UITextField!
    
    @IBOutlet weak var tempstringLabel: UILabel!
    
    @IBAction func convertTemp(_ sender: Any) {
        
        guard
            let cTemp = Int(cTextField.text!)
        else { return }
        
        //(0°C × 9/5) + 32 = 32°F
        
        fTextField.text = String((cTemp * 9 / 5) + 32)
        kTextField.text = String(cTemp + 273)
        
        switch cTemp{
        case ...0:
            tempstringLabel.text = "its cold ouside"
        case 1...30:
            tempstringLabel.text = "its perfect outside"
        case 31...:
            tempstringLabel.text = "its boiling outside"
        default:
            tempstringLabel.text = "Tempeture is outside of normal range"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tempstringLabel.text = ""
    }


}

