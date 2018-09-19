//
//  ViewController.swift
//  Tut_tableview
//
//  Created by ruroot on 9/15/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mTableView: UITableView!
    let myArray = ["Pirzola", "Biftek", "Gerdan", "Antrikot", "Bonfile", "Pençata", "Döş", "Nuar", "Tranç"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mTableView.delegate = self
        mTableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        let myTitle =  myArray[indexPath.row]
        cell.textLabel?.text = myTitle
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}

