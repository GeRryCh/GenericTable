//
//  TableViewController.swift
//  GenericTable
//
//  Created by German Velibekov on 10/09/2019.
//  Copyright © 2019 german. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let data = [TableCellPresenter<LabelCell, LabelCellData>(data: LabelCellData(title: "My Self generics"))]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellPresenter = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: type(of: cellPresenter).cellIdentifier,
                                                 for: indexPath) as! LabelCell
        cellPresenter.configure(cell: cell)
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }


}

