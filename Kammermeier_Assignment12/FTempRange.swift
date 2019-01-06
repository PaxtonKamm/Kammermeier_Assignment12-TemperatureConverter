//
//  FTempRange.swift
//  Kammermeier_Assignment12
//
//  Created by Paxton Kammermeier on 12/10/18.
//  Copyright © 2018 Paxton Kammermeier. All rights reserved.
//

import UIKit

class FTempRange:NSObject,UIPickerViewDataSource{
    
    var ftemps = [Int]()
    
    override init(){
        super.init()
        
        for i in 0...251{
            ftemps.append(i)
        }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ftemps.count
    }
}
