# LimitCellSelect
[![Version](https://img.shields.io/cocoapods/v/LimitCellSelect.svg?style=flat)](http://cocoapods.org/pods/LimitCellSelect)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/kaskay/LimitCellSelect/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/LimitCellSelect.svg?style=flat)](http://cocoapods.org/pods/LimitCellSelect)
[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/)

## Intoduction
![demo](Image/LimitCellSelect.gif)

You can specify the maximum number of cells that can be selected, and specify the cells that are selected by default.

## Requirements

`LimitCellSelect` is written in Swift 3. Compatible with iOS 9.0+

## Usage

#### import Library
```ruby
import LimitCellSelect
```

#### initial Limit and default select index
To limit the number of cell selections and preselect a cell
```ruby
limitCellSelect = LimitCellSelect.init(limit: 3, defaultIndex: [0,2])
```
or If you do not use defaultSelect
```ruby
limitCellSelect = LimitCellSelect.init(limit: 3)
```

And when the cell is created, it is set by using the set () method.
```ruby
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "reuseIdentifier")
        
        // Setting limitCellSelect
        limitCellSelect.set(cell: cell, row: indexPath.row)
        
        return cell
    }
```

To select a cell and return the selected cell, use the on () and selectCells () methods.
```ruby
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell  = tableView.cellForRow(at: indexPath) else { return }
        
        //Checks the currently selected cell.
        limitCellSelect.on(cell: cell, row: indexPath.row)
        
        //Returns the selected cells.
        print(limitCellSelect.selectCells())
    }
```

## Installation

### Cocoapods

LimitCellSelect is available through [CocoaPods](http://cocoapods.org).

```ruby
pod 'LimitCellSelect'
```
### Carthage
LimitCellSelect is available through [Carthage](https://github.com/Carthage/Carthage).

```ruby
github "https://github.com/kaskay/LimitCellSelect"
```
## Author
[kaskay](https://github.com/kaskay)

## License
LimitCellSelect is available under the MIT license.
