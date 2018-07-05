//
//  ViewController.swift
//  MyApp
//
//  Created by Grzesiek Kulesza on 11.05.2018.
//

import UIKit

class ViewController: UIViewController {

    var item: Item?
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
   
    @IBAction func cancel(_ sender: UIBarButtonItem) {
       // self.navigationController?.popViewController(animated: true)
        
        let isInAddMode = presentingViewController is UINavigationController
        
        if isInAddMode {
            dismiss(animated: true, completion: nil)
        }
        else {
            navigationController!.popViewController(animated: true)
        }
        
        
    }
    
    
    
//    func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
//        if saveButton === sender {
//            let name = nameTextField.text ?? ""
//            item = Item(name: name)
//        }
//    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton
        {
            let name = nameTextField.text ?? "";
            item = Item(name: name)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = item {
            nameTextField.text   = item.name
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

