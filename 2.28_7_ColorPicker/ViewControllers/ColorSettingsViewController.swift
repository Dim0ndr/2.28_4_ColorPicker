//
//  ViewController.swift
//  2.28_4_ColorPicker
//
//  Created by Dimondr on 24.06.2022.
//

import UIKit

class ColorSettingsViewController: UIViewController {

    @IBOutlet var rectangleToColorize: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var doneButton: UIButton!
   
    var delegate: ColorSettingsViewControllerDelegate!
    
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
        case greenSlider:
            greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        default:
            blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        }
        
        rectangleToColorize.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
    }
    
    @IBAction func doneButtonPressed() {
        delegate.setNewColor(
            redColor: redSlider.value,
            greenColor: greenSlider.value,
            blueColor: blueSlider.value
        )
        dismiss(animated: true)
    }
    
    
}

