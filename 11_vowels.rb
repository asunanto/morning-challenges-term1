# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#

<<<<<<< HEAD
def count_vowels (string)
  char_arr = string.chars
  return_vowel = []
  for char in char_arr
    return_vowel << char if ['a','e','i','o','u','A','E','I','O','U'].include?(char)
  end
  return return_vowel
end

# def count_vowels(str)
#   str.scan(/[aeoui]/i)
# end


print count_vowels("The quick brown FOx")
puts
=======
def vowels (string)
  string.scan(/[aeiou]/i)
end
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
