class SudokuBoard{
    var Board = [[nil,nil,nil,nil,nil,nil,nil,nil,nil],  //Inital board
                 [nil,nil,nil,nil,nil,nil,nil,nil,nil],
                 [nil,nil,nil,nil,nil,nil,nil,nil,nil],
                 [nil,nil,nil,nil,nil,nil,nil,nil,nil],
                 [nil,nil,nil,nil,nil,nil,nil,nil,nil],
                 [nil,nil,nil,nil,nil,nil,nil,nil,nil],
                 [nil,nil,nil,nil,nil,nil,nil,nil,nil],
                 [nil,nil,nil,nil,nil,nil,nil,nil,nil],
                 [nil,nil,nil,nil,nil,nil,nil,nil,nil]]

    func CreateBoard(board:Array<[Int?]>){ //This function is called in order to apply the desired layout to the board.
      Board = board
    }
    
    func GetRow(Row:Int) -> Array<Any?>{ // If called, this function will return all the cells' values within the specified row.
        var row: [Any?] = []
        row = Board[Row]
        return row
    }
    func GetColumn(Column:Int) -> Array<Int?>{ // If called, this function will return all the cells' values within the specified column.
        var column: [Int?] = []
        for ind in 0..<9{
            let row = Board[ind]
            let point = row[Column]
            column.append(point as? Int)
        }
        return column
    }
    func GetBox(Row:Int, Column:Int) -> Array<Int?>{ // If called, this function will retunr all the cells' values withing the specified cell's box.
        var Box: [Int?] = []
        let BoxColumn = Column / 3
        let BoxRow = Row / 3
        for RowIndex in BoxRow..<(BoxRow + 3) {
            for ColumnIndex in BoxColumn ..< (BoxColumn + 3) {
                Box.append(Board[RowIndex][ColumnIndex] as? Int)
            }
        }
        return Box
      
    }
    func PrintBoard(){ // If called, this function will print the Sudoku board in a easy to read format.
        for Row in 0..<9{
              for Column in 0..<9{
                  print(Board[Row][Column] as Any, terminator:"")
                  
              }
              print()
        }
    }
}
