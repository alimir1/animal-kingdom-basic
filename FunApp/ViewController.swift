//
//  ViewController.swift
//  FunApp
//
//  Created by Ishraq on 1/14/18.
//  Copyright © 2018 Ishraq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var elephantButton: UIButton!
    @IBOutlet var monkeyButton: UIButton!
    @IBOutlet var tigerButton: UIButton!
    @IBOutlet var animalNameLabel: UILabel!
    @IBOutlet var fontSizeLabel: UILabel!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalNameLabel.text = "Monkey"
        monkeyButton.setImage(#imageLiteral(resourceName: "monkey filled"), for: .normal)
    }
    
    @IBAction func onMonkeyTap(_ sender: UIButton) {
        animalNameLabel.text = "Monkey"
        monkeyButton.setImage(#imageLiteral(resourceName: "monkey filled"), for: .normal)
        elephantButton.setImage(#imageLiteral(resourceName: "elephant"), for: .normal)
        tigerButton.setImage(#imageLiteral(resourceName: "tiger"), for: .normal)
    }
    
    @IBAction func onElephantTap(_ sender: UIButton) {
        animalNameLabel.text = "Elephant"
        monkeyButton.setImage(#imageLiteral(resourceName: "monkey"), for: .normal)
        elephantButton.setImage(#imageLiteral(resourceName: "elephant filled"), for: .normal)
        tigerButton.setImage(#imageLiteral(resourceName: "tiger"), for: .normal)
    }
    
    @IBAction func onTigerTap(_ sender: UIButton) {
        animalNameLabel.text = "Tiger"
        monkeyButton.setImage(#imageLiteral(resourceName: "monkey"), for: .normal)
        elephantButton.setImage(#imageLiteral(resourceName: "elephant"), for: .normal)
        tigerButton.setImage(#imageLiteral(resourceName: "tiger filled"), for: .normal)
    }
    
    @IBAction func onSliderChange(_ sender: UISlider) {
        fontSizeLabel.text = "\(sender.value)"
        animalNameLabel.font = UIFont.systemFont(ofSize: CGFloat(sender.value))
    }
    
    @IBAction func onSwitchChange(_ sender: UISwitch) {
        slider.isHidden = !sender.isOn
        fontSizeLabel.isHidden = !sender.isOn
    }
    
    @IBAction func onColorCtrlTap(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            self.view.backgroundColor = UIColor.white
        } else if sender.selectedSegmentIndex == 1 {
            self.view.backgroundColor = UIColor.red
        } else if sender.selectedSegmentIndex == 2 {
            self.view.backgroundColor = UIColor.green
        } else {
            self.view.backgroundColor = UIColor.blue
        }
    }
}
