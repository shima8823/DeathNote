//
//  SecondViewController.swift
//  Death_Note
//
//  Created by shimada shun on 2022/08/28.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var descriptionField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        datePicker.minimumDate = Date()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
