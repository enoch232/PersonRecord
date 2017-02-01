//
//  personRecord.swift
//  lab2
//
//  Created by Enoch Ko on 2/1/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import Foundation
class personRecord {
    var name:String? = nil
    var ssn:Int64? = nil
    var age:Int16? = nil
    
    init(name:String, ssn:Int64, age:Int16) {
        self.name = name
        self.ssn = ssn
        self.age = age
    }
    
}




