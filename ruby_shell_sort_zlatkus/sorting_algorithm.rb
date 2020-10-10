# frozen_string_literal: true

# Shell sorting algorithm
class SortingAlgorithm

  # Metodas kuris sortina. Rubocop teigia jog per daug eiluciu, bet visos reikalingos
  def shell_sort(array)
    h = 1
    n = array.length
    h = (3 * h) + 1 while h < n / 3
    while h >= 1
      (h...n).each do |i|
        j = i
        while j >= h
          if array[j - h] > array[j]
            temp = array[j]
            array[j] = array[j - h]
            array[j - h] = temp
          end
          j -= h
        end
      end
      h /= 3
    end
    array
  end
end
