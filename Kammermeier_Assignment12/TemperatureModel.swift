//
//  TemperatureModel.swift
//  Kammermeier_Assignment12
//
//  Created by Paxton Kammermeier on 12/10/18.
//  Copyright © 2018 Paxton Kammermeier. All rights reserved.
//

import UIKit

class TemperatureModel {
    func celsiusToFahrenheit(tempC: Int) -> Double {
        return 1.8 * Double(tempC) + 32
    }
    func imageForTemp(tempC: Int) -> UIImage {
        if tempC <= 0 {
            return #imageLiteral(resourceName: "ice")
        } else if tempC < 100 {
            return #imageLiteral(resourceName: "water")
        }else{
            return #imageLiteral(resourceName: "Steam2")
        }
    }
}
