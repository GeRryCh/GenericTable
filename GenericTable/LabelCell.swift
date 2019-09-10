//
//  LabelCell.swift
//  GenericTable
//
//  Created by German Velibekov on 10/09/2019.
//  Copyright © 2019 german. All rights reserved.
//

import UIKit

struct LabelCellData {
    let title: String
}

class LabelCell: UITableViewCell, Cell  {
    func configure(with data: LabelCellData) {
        self.textLabel?.text = data.title
    }
}
