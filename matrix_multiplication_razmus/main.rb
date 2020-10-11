# frozen_string_literal: true

require_relative 'matricu_daugyba.rb'
require_relative 'matrix_printer.rb'

multiplicator = MatrixMultiplicator.new

printer = MatrixPrinter.new

matrix_a = [
  [1, 2, 3],
  [4, 5, 6],
  [1, 2, 3]
]

matrix_b = [
  [7, 8, 4],
  [9, 10, 3],
  [11, 12, 6]
]

puts 'Mtrica A: '
printer.print_matrix(matrix_a)

puts

puts 'Matrica B:'
printer.print_matrix(matrix_b)

puts

puts 'Rezultatas'
result = multiplicator.multiply(matrix_a, matrix_b)
printer.print_matrix(result)
