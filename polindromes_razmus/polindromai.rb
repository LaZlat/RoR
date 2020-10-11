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

  # sutrumpinau metoda, bet jis vistiek per ilgas
  def calculate(how_many)
    array = []
    i = 0
    skaicius = 9
    while i < how_many
      skaicius += 1
      temp = skaicius
      polindromas = form_polindrome(temp)
      if polindromas == skaicius
        array.append(polindromas)
        i += 1
      end
    end
    array
  end
end
