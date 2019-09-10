//
//  File.swift
//  GenericTable
//
//  Created by German Velibekov on 10/09/2019.
//  Copyright © 2019 german. All rights reserved.
//

import UIKit

protocol Cell {
    associatedtype CellData
    func configure(with data:CellData)
}

protocol CellPresenter {
    associatedtype Cell
    static var cellIdentifier: String { get }
    func configure(cell: Cell)
}

struct TableCellPresenter<C: Cell, D>: CellPresenter
                where C.CellData == D,C: UITableViewCell {
    
    var data: D
    
    static var cellIdentifier: String  {
        return "\(type(of: C.self))".replacingOccurrences(of: ".Type", with: "")
    }
    
    func configure(cell: C) {
        cell.configure(with: self.data)
    }
}
