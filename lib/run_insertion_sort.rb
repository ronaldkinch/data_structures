require_relative "insertion_sort.rb"
require "benchmark"

p [].insertion_sort
p [5].insertion_sort
p source = Array.new(20) { |i| i }
p source.insertion_sort
p "source is not changed", source
p source.insertion_sort!
p "source is changed", source

n = 10_000
ary = Array.new(n) { |i| i }
ary_rev = ary.reverse
ary_rand1 = ary.shuffle
ary_rand2 = ary.shuffle
ary_rand3 = ary.shuffle

puts "Insertion sort - #{n} elements"
Benchmark.bm(10) do |try|
  try.report("sorted") { ary.insertion_sort }
  try.report("reverse") { ary_rev.insertion_sort }
  try.report("random 1") { ary_rand1.insertion_sort }
  try.report("random 2") { ary_rand2.insertion_sort }
  try.report("random 3") { ary_rand3.insertion_sort }
end
