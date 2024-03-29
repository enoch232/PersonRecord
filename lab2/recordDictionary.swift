//
//  recordDictionary.swift
//  lab2
//
//  Created by Enoch Ko on 2/1/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import Foundation
class recordDictionary {
    var infoRepository : [Int64:personRecord] = [Int64:personRecord] ()
    init() { }
    
    
    func addRecord(record:personRecord) {
        print("adding " + record.name!)
        infoRepository[record.ssn!] = record
        
    }
    
    func editRecord(record:personRecord){
        infoRepository[record.ssn!] = record
    }
    
    func count() -> Int {
        return infoRepository.count
    }
    
    func searchRecord(ssn:Int64) -> personRecord? {
        var found = false
        
        for (eachSSN, _) in infoRepository {
            if eachSSN == ssn {
                found = true
                break
            }
        }
        if found {
            return infoRepository[ssn]
        } else {
            
            return nil
        }
    }
    
    func viewRecord(page:Int) -> personRecord? {
        var counter:Int = 0
        var exist:Bool = false
        var saveSSN:Int64?
        for (eachSSN, _) in infoRepository {
            counter += 1
            if counter == page {
                exist = true
                saveSSN = eachSSN
            }
            
        }
        if exist {
            return infoRepository[saveSSN!]
        }else{
            return nil

        }
        
    }
    
    func deleteRecord(ssn:Int64) {
        infoRepository[ssn] = nil
        
    }
}
