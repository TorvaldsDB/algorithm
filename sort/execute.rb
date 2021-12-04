# require_relative 'sort.rb'
load './sort.rb'

a = [2,1,3,2,5,23,5,2,1,34,251,31,4,2341,42,4,241,2]
puts bubble(a).inspect
a = [2,1,3,2,5,23,5,2,1,34,251,31,4,2341,42,4,241,2]
puts selection(a).inspect
a = [2,1,3,2,5,23,5,2,1,34,251,31,4,2341,42,4,241,2]
puts insertion(a).inspect