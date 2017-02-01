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
    @IBOutlet weak var notificationLabel: UILabel!
    var record:recordDictionary = recordDictionary()
    var recordCounter:Int = 0
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
                    let newPersonRecord =  personRecord(name: name, ssn: Int64(ssn)!, age: Int16(age)!)
                    record.addRecord(record: newPersonRecord)
                    self.SSNTextField.text = ""
                    self.NameTextField.text = ""
                    self.AgeTextField.text = ""
                    self.notificationLabel.text = "You successfully added a record!"
                }else{
                    self.notificationLabel.text = "You need to provide age."
                }
            }else{
                self.notificationLabel.text = "You need to provide name."
            }
        }else{
            self.notificationLabel.text = "You need to provide ssn."
        }
    }
    @IBAction func DeleteRecord(_ sender: UIBarButtonItem) {
        if let ssn = self.SSNTextField.text, !ssn.isEmpty {
            record.deleteRecord(ssn: Int64(ssn)!)
            self.notificationLabel.text = "You have successfully deleted a record."
            self.SSNLabel.text = ""
            self.NameLabel.text = ""
            self.AgeLabel.text = ""
            self.SSNTextField.text = ""
        }else{
            self.notificationLabel.text = "You need to provide ssn to delete a record."
        }
    }
    @IBAction func EditRecord(_ sender: UIBarButtonItem) {
    }
    @IBAction func SearchRecord(_ sender: UIBarButtonItem) {
        if let ssn = self.SSNTextField.text, !ssn.isEmpty {
            if let foundRecord = record.searchRecord(ssn: Int64(ssn)!) {
                self.SSNLabel.text = "\(foundRecord.ssn!)"
                self.NameLabel.text = foundRecord.name
                self.AgeLabel.text = "\(foundRecord.age!)"
                self.notificationLabel.text = "Found a record!"
                self.SSNTextField.text = ""
            } else {
                self.notificationLabel.text = "There is no record with that SSN!"
                self.SSNTextField.text = ""
            }

        } else {
            self.notificationLabel.text = "You need to provide ssn to search a record."
        }
    }
    @IBAction func PreviousRecord(_ sender: UIBarButtonItem) {
        if recordCounter == 0 {
            self.notificationLabel.text = "Showing the first record."
        }else{
            recordCounter -= 1
            if let foundRecord = record.viewRecord(page: recordCounter){
                self.SSNLabel.text = "\(foundRecord.ssn!)"
                self.NameLabel.text = foundRecord.name
                self.AgeLabel.text = "\(foundRecord.age!)"
                self.notificationLabel.text = "person \(recordCounter)"
            }else{
                
            }

        }
    }
    @IBAction func NextRecord(_ sender: UIBarButtonItem) {
        if recordCounter == record.count() {
            self.notificationLabel.text = "No more records."
        }else{
            recordCounter += 1
            if let foundRecord = record.viewRecord(page: recordCounter){
                self.SSNLabel.text = "\(foundRecord.ssn!)"
                self.NameLabel.text = foundRecord.name
                self.AgeLabel.text = "\(foundRecord.age!)"
                self.notificationLabel.text = "person \(recordCounter)"

            }else{
                
            }

            
        }
    }


}

