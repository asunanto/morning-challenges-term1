# *Quiz Letter blocks*
# You are given a collection of ABC blocks. 
# Just like the ones you had when you were a kid. 
# There are twenty blocks with two letters on each block. 
# You are guaranteed to have a complete alphabet amongst all sides of the blocks. 
# The sample blocks are:
$arr = [['B','O'],
    ['X','K'],
    ['D','Q'],
    ['C','P'],
    ['N','A'],
    ['G','T'],
    ['R','E'],
    ['T','G'],
    ['Q','D'],
    ['F','S'],
    ['J','W'],
    ['H','U'],
    ['V','I'],
    ['A','N'],
    ['E','R'],
    ['F','S'],
    ['L','Y'],
    ['P','C'],
    ['Z','M'],]


def can_make_word(string)
    letter_arr = string.chars    
    $arr = $arr.flatten
    hash = {}
    hash_s = {}
    for char in $arr
        if hash.has_key?(:"#{char}") 
            hash[:"#{char}"] += 1
        else
            hash[:"#{char}"] = 1
        end
    end

    for char in letter_arr
        if hash_s.has_key?(:"#{char}") 
            hash_s[:"#{char}"] += 1
        else
            hash_s[:"#{char}"] = 1
        end    
    end
   
    for key,val in hash_s
        if hash_s[:"#{key}"] > hash[:"#{key}"]
            puts false
            return
        else
            
        end
    end
    puts true
    
end



# If you test these words, these results will happen:
 can_make_word("AA")
# # => true
 can_make_word("BARK")
# # => true
 can_make_word("BOOK")
# # => false
 can_make_word("TREAT")
# # => true
can_make_word("COMMON")
# => false
can_make_word("SQUAD")
# => true
can_make_word("CONFUSE")
# => true
can_make_word("BOUGHT")
#=> false
# Write a program in ruby that evaluates can_make_word
# Extension
# Use the lots_of_words.txt file to test your code.
# Now order the words that can be made by length.
