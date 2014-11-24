def FirstReverse(str)

  reversed_letters = Array.new
  letters = str.split(//)
  until letters.length <= 0
    reversed_letters << letters.pop
  end
  str = reversed_letters.join()
  return str

end
