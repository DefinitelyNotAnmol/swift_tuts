//
//  ViewController.swift
//  ConvertIT
//
//  Created by Anmol Jain on 29/07/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    var websiteURL = "https://free.currconv.com/api/v7/convert"
    var apiKey = "f7b472a73a2a5cb7438c"
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: Any) {
        getCurrencyExchangeValue(Float(textField.text!)!)
    }
    
    func getCurrencyExchangeValue(_ value : Float){
        
        let parameter : [String : String] = ["q" : "USD_INR", "compact" : "ultra", "apiKey" : apiKey]
        
        Alamofire.request(websiteURL, method: .get, parameters: parameter).responseJSON {
            response in
            if response.result.isSuccess {
                print("Got the currency data")
                let data: JSON = JSON(response.result.value!)
                self.updateUI(data: data, value: value)
            }
                
            else {
                print("Server didn't responded correctly")
                self.outputLabel.text = "Unable to connect to server"
            }
        }
        
    }
    
    func updateUI(data : JSON, value: Float) {
        outputLabel.text = String(round(data["USD_INR"].floatValue * value * 100) / 100)
    }
}

