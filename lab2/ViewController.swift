//
//  ViewController.swift
//  lab2
//
//  Created by Enoch Ko on 1/31/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SSNTextField: UITextField!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var AgeTextField: UITextField!
    @IBOutlet weak var SSNLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var AgeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func AddRecord(_ sender: UIBarButtonItem) {
        if let ssn = self.SSNTextField.text, !ssn.isEmpty {
            if let name = self.NameTextField.text, !name.isEmpty{
                if let age = self.AgeTextField.text, !age.isEmpty{
                    self.SSNLabel.text = ssn
                    self.NameLabel.text = name
                    self.AgeLabel.text = age
                }
            }
        }else{
            self.SSNLabel.text = "error"
            self.NameLabel.text = "error"
            self.AgeLabel.text = "error"
        }
    }
    @IBAction func DeleteRecord(_ sender: UIBarButtonItem) {
    }
    @IBAction func EditRecord(_ sender: UIBarButtonItem) {
    }
    @IBAction func SearchRecord(_ sender: UIBarButtonItem) {
    }
    @IBAction func PreviousRecord(_ sender: UIBarButtonItem) {
    }
    @IBAction func NextRecord(_ sender: UIBarButtonItem) {
    }


}

