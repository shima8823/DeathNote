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
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBAction func doneButtonItem(_ sender: Any) {
        print("done")
        if let name = nameField.text, !(name.isEmpty) {
            addPersonInfoToModel(name: name)
        }
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        datePicker.minimumDate = Date()
        
        descriptionTextView.layer.borderColor = UIColor(named: "descriptionTextView")?.cgColor
        descriptionTextView.layer.borderWidth = 1.0
    }
    
    func addPersonInfoToModel(name: String) {
        let df = DateFormatter()
        df.dateFormat = "yyyy MM dd HH:mm:ss"
        ViewController.data.personInfo.append((name, df.string(from: datePicker.date), descriptionTextView.text))
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
