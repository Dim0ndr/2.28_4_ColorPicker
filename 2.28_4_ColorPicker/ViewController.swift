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
    
//    private var redValue: CGFloat = 0.05
//    private var greenValue: CGFloat = 0.27
//    private var blueValue: CGFloat = 0.49
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rectangleToColorize.layer.cornerRadius = 15
    }

    override func viewWillLayoutSubviews() {
//        rectangleToColorize.backgroundColor = UIColor.init(
//            red: redValue,
//            green: greenValue,
//            blue: blueValue,
//            alpha: 1
//        )
        
        rectangleToColorize.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
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

}

