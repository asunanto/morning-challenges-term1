# Unique
#
# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.
#
# Difficulty:
# 5/10
#
# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]
#
# Hints:
# A hash could be helpful in your solution.
#
# Check your solution by running the tests:
# ruby tests/09_unique_test.rb
#

def unique (mylist)
<<<<<<< HEAD
  # hash = {}
  uniq_list =[]
  # for element in mylist
  #   hash[element] = 1 + (hash[element] || 0)
  # end
  # for key,val in hash
  #   uniq_list << key
  # end
  # return uniq_list

  for element in mylist
    uniq_list << element  if !uniq_list.include?(element) 
  end
  return uniq_list
=======
  hash = {}
  mylist.each { |x| hash[x] = true }
  hash.keys
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
end

