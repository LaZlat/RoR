# frozen_string_literal: true

# class which returns polindromes
class Polindromes
  def form_polindrome(temp)
    polindromas = 0
    while temp.positive?
      liekana = temp % 10
      temp = (temp - liekana) / 10
      polindromas = liekana + polindromas * 10
    end
    polindromas
  end

  def find_polindromes(array, iii, skaicius, how_many)
    while iii < how_many
      skaicius += 1
      temp = skaicius
      polindromas = form_polindrome(temp)
      if polindromas == skaicius
        array.append(polindromas)
        iii += 1
      end
    end
    array
  end

  # sutrumpinau metoda, bet jis vistiek per ilgas
  def calculate(how_many)
    array = []
    i = 0
    skaicius = 9
    find_polindromes(array, i, skaicius, how_many)
  end
end
