def LetterChanges(str)
  new_array = Array.new
  letters = str.split('')
  letters.each do |s|
    new_array << (s[0] + 1).chr
  end
  joined = new_array.join('')
  str = joined.gsub(/[aeiou]/) { |s| s.capitalize }


  return str

end


### This is more accurate code ###
# def LetterChanges(str)
#   alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
#   lstring = str.downcase.split('')
#   vowels = ['a', 'e', 'i', 'o', 'u']
#   test = []

#   lstring.each do |c|
#     if alphabet.include?(c)
#       alphaindex = alphabet.index(c)
#       if alphaindex < alphabet.length
#         test << alphabet[alphaindex + 1]
#       end
#     else
#       test << c
#     end
#   end

#   test.each do |b|
#     if vowels.include?(b)
#       b.upcase!
#     end
#   end

#   return test.join
# end
