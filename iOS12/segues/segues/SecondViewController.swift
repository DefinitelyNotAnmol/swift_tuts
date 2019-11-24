//
//  SecondViewController.swift
//  segues
//
//  Created by Anmol Jain on 28/07/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var textboxData : String?
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = textboxData {
            label.text = data
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
