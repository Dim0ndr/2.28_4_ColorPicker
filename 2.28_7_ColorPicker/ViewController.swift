//
//  ViewController.swift
//  2.28_4_ColorPicker
//
//  Created by Dimondr on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var rectangleToColorize: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rectangleToColorize.layer.cornerRadius = 15
        
    }

    override func viewWillLayoutSubviews() {

    }

    @IBAction func sliderMoving(_ sender: UISlider) {
        
        switch sender {
        case redSlider:
            redValueLabel.text = String(format: "%.2f", redSlider.value)
//            redValue = CGFloat(redSlider.value)
        case greenSlider:
            greenValueLabel.text = String(format: "%.2f", greenSlider.value)
//            greenValue = CGFloat(greenSlider.value)
        default:
            blueValueLabel.text = String(format: "%.2f", blueSlider.value)
//            blueValue = CGFloat(blueSlider.value)
        }
        
        rectangleToColorize.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
    }
    
//    @IBAction func redSliderMoving() {
//        redValueLabel.text = String(round(redSlider.value * 100) / 100)
//        redValue = CGFloat(redSlider.value)
//    }
//
//    @IBAction func greenSliderMoving() {
//        greenValueLabel.text = String(round(greenSlider.value * 100) / 100)
//        greenValue = CGFloat(greenSlider.value)
//    }
//
//    @IBAction func blueSliderMoving() {
//        blueValueLabel.text = String(round(blueSlider.value * 100) / 100)
//        blueValue = CGFloat(blueSlider.value)
//    }

    
    private func setLabel(label: UILabel, textFont: UIFont, text: String, alignment: NSTextAlignment) {
        label.text = text
        label.textAlignment = alignment
        label.font = textFont
    }
    
}

