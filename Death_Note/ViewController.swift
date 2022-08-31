//
//  ViewController.swift
//  Death_Note
//
//  Created by shimada shun on 2022/08/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(foreground(notification:)),
                                               name: UIApplication.willEnterForegroundNotification,
                                               object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.personInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfoCell") as! personInfoTableViewCell
        cell.layer.borderColor = UIColor(named: "frameBorderOfCell")?.cgColor
        cell.layer.borderWidth = 3
        let cellImage = UIImageView()
        cellImage.image = UIImage(named: "old-paper")
        cellImage.contentMode = .scaleToFill
        cell.backgroundView = cellImage
        cell.personInfo = Data.personInfo[indexPath.row]
        return cell
    }
    
    @objc func foreground(notification: Notification) {
        tableView.reloadData()
    }
}
