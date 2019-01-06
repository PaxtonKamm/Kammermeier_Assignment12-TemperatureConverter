//
//  ViewController.swift
//  Kammermeier_Assignment12
//
//  Created by Paxton Kammermeier on 12/10/18.
//  Copyright © 2018 Paxton Kammermeier. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    @IBOutlet weak var FahrenheitLabel: UILabel!
    @IBOutlet weak var ImageLabel: UIImageView!
    @IBOutlet weak var TempPicker: TemperatureRange!
    
    var tempModel = TemperatureModel()
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(TempPicker.temps[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempF = tempModel.celsiusToFahrenheit(tempC: TempPicker.temps[row])
        print("tempC: \(TempPicker.temps[row]), tempF: \(tempF)")
        FahrenheitLabel.text="\(tempF)"
         // set the image for current temperature
        ImageLabel.image = tempModel.imageForTemp(tempC: TempPicker.temps[row])
    }
    
    //MARK: picker delegate methoda
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewTemp = tempModel.celsiusToFahrenheit(tempC: TempPicker.temps[0])
        FahrenheitLabel.text="\(viewTemp)"
        ImageLabel.image = tempModel.imageForTemp(tempC: TempPicker.temps[0])
    }
}

