//
//  ViewController.swift
//  FindMyItem
//
//  Created by Teddy Dubno on 11/10/17.
//  Copyright © 2017 Teddy Dubno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var itemName: UITextField!
    @IBOutlet weak var Priority: UISlider!
    @IBOutlet weak var add_item: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func add_item_connect(_ sender: Any) {
        add_item.isHidden = false
    }
    
    
    @IBAction func SubmitNew(_ sender: Any) {
        UserDefaults.standard.set(Priority.value, forKey: itemName.text!)
         add_item.isHidden = true
    }
   
}

