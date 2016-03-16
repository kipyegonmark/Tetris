//
//  Array2D.swift
//  Tetris
//
//  Created by Mark Kipyegon Koskei on 16/03/2016.
//
//


// Define class Array2D
class Array2D<T> {
    let columns: Int
    let rows: Int
    
    // Declare Swift array
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        // Instantiate internal array structure
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
    
    // Create a subscript for Array2D
    subscript (column: Int, row: Int) -> T? {
        get {
            return array [(row * columns) + column]
        }
        
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}