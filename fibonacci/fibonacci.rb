# Fibonacci number

def fib(n)
  return n if n == 0 || n == 1
  fib(n-1) + fib(n-2)
end

# Optimize first time
def fib_fast(n, mem = {})
  return n if n == 0 || n == 1

  mem[n] ||= fib_fast(n-1, mem) + fib_fast(n-2, mem)
end

# Optimize again
def fib_fast_1(n)
  return n if n == 0 || n == 1
  fib1 = 1
  fib0 = 0
  fib2 = 1
  2.upto(n).to_a.each do |i|
    fib2 = fib1+ fib0
    fib0 = fib1
    fib1 = fib2
  end

  return fib2
end
