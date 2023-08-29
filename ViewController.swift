//
//  ViewController.swift
//  MobileApps_Prework
//
//  Created by Solan on 8/28/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextBox: UITextField!
    @IBOutlet weak var lastNameTextBox: UITextField!
    
    @IBOutlet weak var schoolNameTextBox: UITextField!
    @IBOutlet weak var schoolYearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSelectToggle: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onStepperChange(_ sender: UIStepper) {
        numOfPetsLabel.text = "\(Int(sender.value))"

    }
    
    @IBAction func onIntroductionClicked1(_ sender: UIButton) {
        //      sets the year variable to the title of the selected segment in the segmented control
                let year = schoolYearSegmentedControl.titleForSegment(at: schoolYearSegmentedControl.selectedSegmentIndex)
                
        //      "Personal" introduction based off the variables passed from the rest of the entered information fields
                let intro = """
                            My name is \(firstNameTextBox.text!) \(lastNameTextBox.text!) and I attend \(schoolNameTextBox.text!).\
                            I'm currently in my \(year!) and I have \(numOfPetsLabel.text!) \(morePetsSelectToggle.isOn == true ? "and I want more": "and I don't want " + "\(numOfPetsLabel.text! == "0" ? "any." : "any more")" )
                            """
                
        //        Creates the Alert using the previously constructed message
                let alertController = UIAlertController(title: "My Introduction", message: intro, preferredStyle: .alert)
                
        //        Unfortunately we need a way to dismiss the alert as well
                let action = UIAlertAction(title: "Hey",style: .default, handler: nil)
                alertController.addAction(action)
                
                present(alertController, animated:  true, completion: nil)
                
                
            }
    
    
}

