# frozen_string_literal: true

# manages the files
class FilesManager
  # Nuskaito faila ir grazina
  def read_file(numbers_file)
    file_into_array(File.readlines(numbers_file))
  end

  # Nuskaitytas failas paverciamas i masyva
  def file_into_array(array)
    integer_unsorted_array = []

    array.each do |line|
      integer_unsorted_array << line.strip.to_i
    end

    integer_unsorted_array
  end
end
