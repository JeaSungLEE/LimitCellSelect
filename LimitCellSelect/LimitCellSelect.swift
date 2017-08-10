//
//  LimitCellSelect.swift
//  LimitCellSelect
//
//  Created by jeasung.lee on 2017. 8. 10..
//  Copyright © 2017년 jeasung.lee. All rights reserved.
//

import UIKit

public struct LimitCellSelect {
    var cells = [UITableViewCell]()
    var limit: Int = 1
    var selectCellIndexes = [Int]()
    
    public init(limit: Int) {
        self.limit = limit
    }
    
    public init(limit: Int, defaultIndex: [Int]) {
        self.init(limit: limit)
        
        self.selectCellIndexes = defaultIndex
    }
    
    public mutating func set(cell: UITableViewCell, row: Int) {
        if cells.count > row {
            cells[row] = cell
            
            checkedEachCell(cells: cells)
            return
        }
        
        cells.append(cell)
        
        if selectCellIndexes.contains(row) {
            checkedEachCell(cells: cells)
        }
    }
    
    public mutating func on(cell: UITableViewCell, row: Int) {
        addSelectedCell(cell: cell, row: row)
        checkedEachCell(cells: cells)
    }
    
    public func selectCells() -> [UITableViewCell] {
        var selectCells = [UITableViewCell]()
        
        selectCellIndexes.forEach {
            selectCells.append(cells[$0])
        }
        
        return selectCells
    }
    
    private mutating func addSelectedCell(cell: UITableViewCell, row: Int) {
        if selectCellIndexes.contains(row) {
            if let index = selectCellIndexes.index(of: row) {
                selectCellIndexes.remove(at: index)
            }
        } else {
            if selectCellIndexes.count >= limit {
                selectCellIndexes.removeFirst()
            }
            selectCellIndexes.append(row)
        }
    }
    
    private func isSelectable(row: Int) -> Bool {
        if selectCellIndexes.contains(row) {
            return true
        }
        return false
    }
    
    private func checkedEachCell(cells: [UITableViewCell]) {
        cells.enumerated().forEach {
            checked(cell: $0.element, isSelected: isSelectable(row: $0.offset))
        }
    }
    
    private func checked(cell: UITableViewCell, isSelected: Bool) {
        if isSelected {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
}
