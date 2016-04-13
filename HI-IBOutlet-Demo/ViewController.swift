//
//  ViewController.swift
//  HI-IBOutlet-Demo
//
//
//  Created by Christian Croona on 29/02/16.
//  Copyright © 2016 Christian Croona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Constants
    
    private let colors: [UIColor] = [
        UIColor.whiteColor(),
        UIColor.redColor(),
        UIColor.orangeColor(),
        UIColor.yellowColor(),
        UIColor.greenColor(),
        UIColor.cyanColor(),
        UIColor.blueColor(),
        UIColor.purpleColor()
    ]
    
    private let colorNames: [String] = [
        "White",
        "Red",
        "Orange",
        "Yellow",
        "Green",
        "Cyan",
        "Blue",
        "Purple"
    ]
    
    //MARK: IBOutlets
    
    @IBOutlet weak var changeButtonColor: UIButton!
    @IBOutlet weak var awesomeView: UIView!
    @IBOutlet weak var CurrentColor: UILabel!
    @IBOutlet weak var TopSquare: UIView!
    @IBOutlet weak var LeftVspace: UIView!
    @IBOutlet weak var LeftHspace: UIView!
    @IBOutlet weak var BottomSpace: UIView!
    @IBOutlet weak var RightHspace: UIView!
    @IBOutlet weak var RightVspace: UIView!
    
    //MARK: Properties
    var redValue: CGFloat = 0.5
    var greenValue: CGFloat = 0.5
    var blueValue: CGFloat = 0.5
    var colorStepper: Int = 0
    
    //MARK: IBActions
    override func viewDidLoad() {
        
         self.view.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        TopSquare.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
         LeftVspace.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
         LeftHspace.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
         BottomSpace.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        RightHspace.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        RightVspace.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
    }
        //self.view.backgroundColor = UIColor(red:CGFloat RedValue, green: GreenValue, blue: 65.0/255, alpha: 1.0)
        
    
    
    @IBAction func changeColor(sender: AnyObject?) {
        let colorIndex = colorStepper % colors.count
        
        awesomeView?.backgroundColor = colors[colorIndex]
        CurrentColor.textColor = colors [colorIndex]
        CurrentColor.text = colorNames[colorIndex]
        
        //increase our stepper
        colorStepper++
        
    }
    
    @IBAction func randomChangeColor(sender: AnyObject?) {
        let colorIndex = random() % colors.count
        
        awesomeView?.backgroundColor = colors[colorIndex]
        
    }
    
    @IBAction func ResetColor(sender: UIButton) {
        awesomeView?.backgroundColor = colors[0]
        CurrentColor.textColor = colors [0]
        CurrentColor.text = colorNames[0]
}
    
    @IBAction func ChangeRed(sender: UISlider) {
        redValue = CGFloat(sender.value)
        displayColors()
    }
  
    @IBAction func ChangeBlue(sender: UISlider) {
        greenValue = CGFloat(sender.value)
         displayColors()

    }
    
    @IBAction func ChangeGreen(sender: UISlider) {
        blueValue = CGFloat(sender.value)
        displayColors()

    }
    
    func displayColors() {
        self.view.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
         TopSquare.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
         LeftVspace.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
         LeftHspace.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        BottomSpace.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        RightVspace.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        RightHspace.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
    }
    


}