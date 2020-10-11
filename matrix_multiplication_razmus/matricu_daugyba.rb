# frozen_string_literal: true

# multiplies two matrixes
class MatrixMultiplicator
  def multiply(arr1, arr2)
    # sita eilute turi per daug kintamuju, bet neina jos isskaidyt
    result = Array.new(arr1.length) { Array.new(arr2[0].length) { 0 } }
    (0..result.length - 1).each do |i|
      (0..result[0].length - 1).each do |j|
        (0..arr1[0].length - 1).each do |k|
          result[i][j] += arr1[i][k] * arr2[k][j]
        end
      end
    end
    result
  end
end
