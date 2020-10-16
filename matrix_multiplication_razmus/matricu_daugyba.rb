# frozen_string_literal: true

# multiplies two matrixes
class MatrixMultiplicator
  # This method is just to silence rubocop, because it does not like more than 2 nested loops
  def last_loop(result, arr1, arr2, iii, jjj)
    (0..arr1[0].length - 1).each do |k|
      result[iii][jjj] += arr1[iii][k] * arr2[k][jjj]
    end
    result
  end

  def multiply(arr1, arr2)
    result = Array.new(arr1.length) { Array.new(arr2[0].length) { 0 } }
    (0..result.length - 1).each do |i|
      (0..result[0].length - 1).each do |j|
        result = last_loop(result, arr1, arr2, i, j)
      end
    end
    result
  end
end
