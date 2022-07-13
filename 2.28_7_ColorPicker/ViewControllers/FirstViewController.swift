//
//  FirstViewController.swift
//  2.28_7_ColorPicker
//
//  Created by Dimondr on 13.07.2022.
//

import UIKit

protocol ColorSettingsViewControllerDelegate {
    func setNewColor(redColor: Float, greenColor: Float, blueColor: Float)
}

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? ColorSettingsViewController else { return }
        settingsVC.delegate = self

    }

}


// MARK: - ColorSettingsViewControllerDelegate

extension FirstViewController: ColorSettingsViewControllerDelegate {
    func setNewColor(redColor: Float, greenColor: Float, blueColor: Float) {
        view.backgroundColor = UIColor(
            red: CGFloat(redColor),
            green: CGFloat(greenColor),
            blue: CGFloat(blueColor),
            alpha: 1
            )
    }
    


}
