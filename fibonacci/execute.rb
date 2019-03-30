load 'fibonacci.rb'
require 'benchmark'

puts "------------- n is 10 -------------"
n = 10
Benchmark.bm do |x|
  x.report { fib(n) }
  x.report { fib_fast_1(n) }
  x.report { fib_fast(n) }
end
puts "------------- END -------------"
=begin
------------- n is 10 -------------
       user     system      total        real
   0.000024   0.000002   0.000026 (  0.000022)
   0.000007   0.000001   0.000008 (  0.000008)
   0.000008   0.000001   0.000009 (  0.000008)
------------- END -------------
=end
puts "------------- n is 50 -------------"
puts "------------- fib(n) will waste to long time -------------"
n = 50
Benchmark.bm do |x|
  # x.report { fib(n) } # Annotate it
  x.report { fib_fast_1(n) }
  x.report { fib_fast(n) }
end
puts "------------- END -------------"
=begin
------------- n is 50 -------------
------------- fib(n) will waste to long time -------------
       user     system      total        real
   0.000010   0.000000   0.000010 (  0.000010)
   0.000028   0.000001   0.000029 (  0.000028)
------------- END -------------
=end
