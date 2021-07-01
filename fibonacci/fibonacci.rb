# Fibonacci number
# 传统递归(二分递归，由于每次都需要重新计算，损耗大量时间和空间，时间复杂度O(2^n)
def fib(n)
  return n if n == 0 || n == 1
  fib(n-1) + fib(n-2)
end

# Optimize first time
# 备忘录法，使用递归方法，但利用 Hash 来存储来避免重复计算子问题
def fib_fast(n, mem = {})
  return n if n == 0 || n == 1

  mem[n] ||= fib_fast(n-1, mem) + fib_fast(n-2, mem)
end

# Optimize again
#
def fib_fast_1(n) # O(n)
  a, b = 0, 1
  return a if n == 0
  return b if n == 1
  2.upto(n).each do |i|
    b = a + b
    a = b - a
  end
  b
end

def fib_fast_1(n) # O(n)
  a, b = 0, 1
  return a if n == 0
  return b if n == 1
  2.upto(n).each do |i|
    a, b = b, a + b
  end
  b
end

# 迭代加法
def fib_fast_2(n)
  return n if n == 0 || n == 1
  fib1 = 1
  fib0 = 0
  fib2 = 1
  2.upto(n).each do |i|
    fib2 = fib1+ fib0
    fib0 = fib1
    fib1 = fib2
  end

  return fib2
end

# 利用数组先存储数字，直接返回结果，耗费空间
# n 越大, 越明显(内存换速度)
def fib_fast_3(n)
  arr = [0, 1]
  return arr[n] if n <= 1
  2.upto(n).each do |i|
    arr[i] = arr[i-1] + arr[i-2]
  end
  arr[n]
end

# 迭代加法
def fib_fast_4(n)
  a, b = 0, 1
  return a if n == 0
  return b if n == 1
  2.upto(n).each do |i|
    tem = b
    b = a + b
    a = tem
  end
  b
end

# 尾递归
def fib_fast_5(first = 0, second = 1, n)
  return first if n == 0
  return second if n == 1
  fib_fast_5(second, first + second, n-1);
end

