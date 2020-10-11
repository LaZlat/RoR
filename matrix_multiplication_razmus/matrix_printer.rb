# frozen_string_literal: true

# prints a matrix
class MatrixPrinter
  def print_matrix(matrix)
    matrix.each do |array|
      array.select { |x| print x.to_s.rjust(4, ' ') }
      puts
    end
  end
end
