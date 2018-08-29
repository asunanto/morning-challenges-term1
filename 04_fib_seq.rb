# 1. sit beside someone new, at a new spot :slightly_smiling_face:

# 2. There is an odd employee at The Company who needs some code written that will provide them with the first 100 numbers of the Fibonacci sequence ….. (no one really knows why the odd employee needs this information - or why they can’t work it out themselves - but Monday mornings can be strange).
@cache = [0,1]
def fib(n)
  return @cache[n] if @cache[n]
  @cache[n] = fib(n-1) + fib(n-2)
end

for i in 1..100
    puts fib(i)
end
