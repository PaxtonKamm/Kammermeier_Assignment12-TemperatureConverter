//
//  CelsiusTemperatureModel.swift
//  Kammermeier_Assignment12
//
//  Created by Paxton Kammermeier on 12/10/18.
//  Copyright © 2018 Paxton Kammermeier. All rights reserved.
//

import UIKit

class CTempModel{
    func FahrenheittoCelsius(tempF:Int)->Double{
        return (Double(tempF)-32.0) * 1.8
    }
    func imageforTemp(tempF:Int) -> UIImage{
        if tempF <= 32 {
           return #imageLiteral(resourceName: "ice")
        } else if tempF <= 211{
            return #imageLiteral(resourceName: "water")
        } else{
            return #imageLiteral(resourceName: "Steam2")
        }
    }
}

