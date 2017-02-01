//
//  recordDictionary.swift
//  lab2
//
//  Created by Enoch Ko on 2/1/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import Foundation
class recordDictionary
{
    var infoRepository : [Int64:personRecord] = [Int64:personRecord] ()
    init() { }
    
    
    func add(p:personRecord)
    {
        print("adding" + p.name!)
        infoRepository[p.ssn!] = p
        
    }
    
    func search(s:Int64) -> personRecord?
    {
        var found = false
        
        for (ssn, _) in infoRepository
        {
            if ssn == s {
                found = true
                break
            }
        }
        if found
        {
            return infoRepository[s]
        }else  {
            
            return nil
        }
    }
    
    func deleteRec(s:Int64)
    {
        infoRepository[s] = nil
        
    }
}
