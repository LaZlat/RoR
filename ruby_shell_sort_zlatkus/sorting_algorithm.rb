# frozen_string_literal: true

# Shell sorting algorithm
class SortingAlgorithm
  # Metodas kuris sortina. Rubocop teigia jog per daug eiluciu, bet visos reikalingos
  def shell_sort(array)
    tic = 1
    n = array.length
    tic = (3 * tic) + 1 while tic < (n / 3)
    sort(array, tic, n)
    array
  end
end

def sort(array, tic, lenght)
  while tic >= 1
    (tic...lenght).each do |i|
      j = i
      while j >= tic
        array[j - tic], array[j] = array[j], array[j - tic] if array[j - tic] > array[j]
        j -= tic
      end
    end
    tic /= 3
  end
end
