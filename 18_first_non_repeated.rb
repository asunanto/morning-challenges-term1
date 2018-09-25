# First Non-repeated
#
# Write a method that will find the first non-repeated
# character in a String. Return false if only repeats
# are found.
#
# *** Whiteboard this first! ***
#
# Pro tip: code quality is a a big deal to potential
# employers. Use smart variable names, keep an eye on
# indentation and be consistent in your decisions
# (e.g. stick to single or double quotes)
#
# Difficulty: ~6/10 (Varies depending on solution. 
# The more optimised the solution, the more difficult
# the algorithm.)
#
# Beast mode: can you return on the first non-repeat,
# without checking every other letter?
#
# Beat mode++: can you maintain linear time?
#
# Example:
# firstNonRepeat('aaaabbbcccdeeefgh') -> 'd'
# firstNonRepeat('wwwhhhggge') -> 'e'
# firstNonRepeat('awwwhhhggge') -> 'a'
# firstNonRepeat('wwwhhhggg') -> false
#
# Check your solution by running the tests:
# ruby tests/13_first_non_repeated_test.rb
#

def firstNonRepeat (string)
<<<<<<< HEAD
  # string.chars.each { |char| return char if string.count(char)==1}
  # false

  for char in string.chars
     return char if string.count(char) == 1
  end
  false

=======
  string.chars.each { |x| return x if string.count(x) == 1 }
  false
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
end

puts firstNonRepeat('aaaabbbcccdeeefgh') 
puts firstNonRepeat('wwwhhhggg')