# load 'fibonacci.rb'
# require_relative 'fibonacci.rb'
# require './fibonacci.rb'
require './fibonacci'

require 'benchmark'

puts "------------- n is 10 -------------"
n = 10
Benchmark.bm(20) do |x|
  x.report("Recursion: ") { fib(n) }
  x.report("With hash cache: ") { fib_fast(n) }
  x.report("Iterator: ") { fib_fast_1(n) }
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
puts "------------- fib(n) will waste too much time -------------"
n = 5000
puts "------------- n is #{n} -------------"
Benchmark.bm(20) do |x| # bmbm
  # x.report { fib(n) } # Annotate it
  x.report("fib_fast") { fib_fast(n) }
  x.report("fib_fast_1") { fib_fast_1(n) }
  x.report("fib_fast_2") { fib_fast_2(n) }
  x.report("fib_fast_3") { fib_fast_3(n) }
  x.report("fib_fast_4") { fib_fast_4(n) }
  x.report("fib_fast_5") { fib_fast_5(n) }
end
puts "------------- END -------------"
puts "#{__FILE__}"
puts "#{$0}"
