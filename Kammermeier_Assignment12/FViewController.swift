//
//  FViewController.swift
//  Kammermeier_Assignment12
//
//  Created by Paxton Kammermeier on 12/10/18.
//  Copyright © 2018 Paxton Kammermeier. All rights reserved.
//

import UIKit

class FViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var CelsiusLabel: UILabel!
    @IBOutlet weak var CelsiusImage: UIImageView!
    @IBOutlet weak var FahrenheitPicker: FTempRange!
    
    var tempModel2 = CTempModel()
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(FahrenheitPicker.ftemps[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempC = tempModel2.FahrenheittoCelsius(tempF: FahrenheitPicker.ftemps[row])
        print("tempC: \(FahrenheitPicker.ftemps[row]), tempF: \(tempC)")
        CelsiusLabel.text=String(tempC)
        CelsiusImage.image=tempModel2.imageforTemp(tempF: FahrenheitPicker.ftemps[row])
    }
    
    //MARK: picker delegate methoda
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let pleaseviewtemp = tempModel2.FahrenheittoCelsius(tempF: FahrenheitPicker.ftemps[0])
            CelsiusLabel.text = String(pleaseviewtemp)
        CelsiusImage.image=tempModel2.imageforTemp(tempF: FahrenheitPicker.ftemps[0])
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
    


