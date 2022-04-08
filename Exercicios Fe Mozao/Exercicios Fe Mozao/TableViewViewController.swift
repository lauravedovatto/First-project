//
//  TableViewViewController.swift
//  Exercicios Fe Mozao
//
//  Created by Felipe Melo on 07/04/22.
//  Copyright © 2022 Felipe Melo. All rights reserved.
//

import UIKit

class TableViewViewController: UIViewController {
    
    @IBOutlet weak var namesTextFields: UITextField!


    @IBAction func addNamesButton(_ sender: Any) {
        nomes.append(namesTextFields.text!)
        tableView.reloadData()
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "TableView"

        // Do any additional setup after loading the view.
   tableView.dataSource = self
    }
    var nomes = [ "Felipe", "Laura", "Minatti", "Thay"]

    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension TableViewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return nomes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
        cell.textLabel?.text = self.nomes[indexPath.row]
        return cell
    }
    
    
}
