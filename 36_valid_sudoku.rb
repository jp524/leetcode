# frozen_string_literal: true

# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  rows = board
  columns = board.transpose
  sub_boxes = parse_sub_boxes(board)

  valid_arrays?(rows) && valid_arrays?(columns) && valid_arrays?(sub_boxes)
end

def valid_arrays?(arrays)
  arrays.each do |array|
    return false if !valid_array?(array)
  end

  return true
end

def parse_sub_boxes(board)
  sub_boxes = Hash.new { |h, k| h[k] = [] }
  board.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      sub_boxes[[i / 3, j / 3]] << cell
    end
  end
  sub_boxes.values
end

def valid_array?(array)
  array.delete('.')
  ascii_array = []
  array.each do |num|
    ascii = num.ord
    return false unless ascii.between?(49, 57)

    ascii_array << ascii
  end

  return false if ascii_array.uniq.length != ascii_array.length

  true
end

board =
  [['5', '3', '.', '.', '7', '.', '.', '.', '.'],
   ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
   ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
   ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
   ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
   ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
   ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
   ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
   ['.', '.', '.', '.', '8', '.', '.', '7', '9']]
# p is_valid_sudoku(board) # true

board =
  [['8', '3', '.', '.', '7', '.', '.', '.', '.'],
   ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
   ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
   ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
   ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
   ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
   ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
   ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
   ['.', '.', '.', '.', '8', '.', '.', '7', '9']]
# p is_valid_sudoku(board) # false

board =
  [['.', '.', '4', '.', '.', '.', '6', '3', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['5', '.', '.', '.', '.', '.', '.', '9', '.'],
   ['.', '.', '.', '5', '6', '.', '.', '.', '.'],
   ['4', '.', '3', '.', '.', '.', '.', '.', '1'],
   ['.', '.', '.', '7', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '5', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.']]
p is_valid_sudoku(board) # false