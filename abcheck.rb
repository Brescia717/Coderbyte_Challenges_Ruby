def abcheck(str)
   # Check to see if 'a' and 'b' are in the string.
   # Find two letters('a' and 'b') in the string.
   # Measure the distance between the two letters.
   # Return 'false' if the string does not meet criteria.
   str = str.downcase.split(//)

   if str.include?('a') && str.include?('b')
      if (str.index('a') - str.index('b')).abs == 4 ||
         (str.index('a') - str.rindex('b')).abs == 4 ||
         (str.rindex('a') - str.index('b')).abs == 4 ||
         (str.rindex('a') - str.rindex('b')).abs == 4

         puts 'true'
      else
         puts 'false'
      end
   else
      puts 'false'
   end

   return str
end

abcheck('laura sobs')
abcheck('laura sos')
abcheck('laur sobs')

### This is a much cleaner approach ###

# def ABCheck(str)
#   strregex = /[ab]/
#   strarray = str.downcase.split("")
#   aindices = []
#   bindices = []
#   strindex = 0

#   strarray.each do |l|
#     if l == "a"
#       aindices << strindex
#     elsif l == "b"
#       bindices << strindex
#     end
#     strindex += 1
#   end


#   aindices.each do |a|
#     if bindices.include?(a + 4) || bindices.include?(a - 4)
#       return true
#     end
#   end

#   return false

# end
