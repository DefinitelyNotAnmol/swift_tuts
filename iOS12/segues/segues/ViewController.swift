//
//  ViewController.swift
//  segues
//
//  Created by Anmol Jain on 28/07/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "secondScreen", sender: self)
    }
    
    //prepare for segue function sends data from one view controller to another view controller
    //this function is triggered just before the segue tarnsition happens, i.e., when it is about to transition from lets
    //      say ViewController.swift to SecondViewController.swift this function is triggered
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //here we are checking in which segue the transition is happening, a app might and will have multiple ViewController
        //So it is common to have multiple segues
        if segue.identifier == "secondScreen" {
            
            //we define a variable which helps us make an object of the ViewController we are about to go in
            //and we can define properties in that ViewController and set the value of those properties from this function
            //and when we arrive in that viewController the properties are already set with the data from this current ViewController
            let destinationVC = segue.destination as! SecondViewController
            
            //Sending data from this ViewController to another ViewController
            destinationVC.textboxData = textField.text!
            
        }
    }
}

