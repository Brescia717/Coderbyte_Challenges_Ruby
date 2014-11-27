def RunLength(str)
  str = str.split(//)
  letters_checked = []
  new_str = []

  check = str.first

  until str.empty? == true
    letter = str[0]
    if letter == check
      letters_checked << str.shift
      if str.empty? == true
        new_str << "#{letters_checked.count}#{letters_checked.first}"
      end
    else
      check = letter
      new_str << "#{letters_checked.count}#{letters_checked.first}"
      letters_checked = []
    end
  end
  str = new_str.join("")

  return str
end
