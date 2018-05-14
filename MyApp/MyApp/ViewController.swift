//
//  ViewController.swift
//  MyApp
//
//  Created by Grzesiek Kulesza on 11.05.2018.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func setLabelText(_ sender: UIButton) {
        nameLabel.text = nameTextField.text
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

