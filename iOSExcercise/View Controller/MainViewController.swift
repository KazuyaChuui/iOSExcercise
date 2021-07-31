//
//  MainViewController.swift
//  iOSExcercise
//
//  Created by Jesus Ruiz on 7/30/21.
//

import UIKit

class MainViewController: UITableViewController {
    
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parse()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    //Hacia rato que no usaba el prototype, usaba xibs pero al ser muy simple decidi usar este metodo.
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemTVC", for: indexPath) as! ItemTableViewCell
        cell.setup(item: items[indexPath.row])
        return cell
    }


}
