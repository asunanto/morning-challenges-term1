# 1. sit beside someone new, at a new spot :slightly_smiling_face:

# 2. There is an odd employee at The Company who needs some code written that will provide them with the first 100 numbers of the Fibonacci sequence ….. (no one really knows why the odd employee needs this information - or why they can’t work it out themselves - but Monday mornings can be strange).
<<<<<<< HEAD
@cache = [0,1]
def fib(n)
  if @cache[n]
    return @cache[n] 
  end
  @cache[n] = fib(n-1) + fib(n-2)
end

puts @cache
=======

# Generate and return the first 'count' values in the Fibonacci sequence
def fib(count)
    fib_sequence = [1, 1]
    count.times do |n|
        fib_sequence << fib_sequence[n] + fib_sequence[n+1]
    end
    return fib_sequence
end

puts fib(100)
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
