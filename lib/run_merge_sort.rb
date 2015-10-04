require_relative "merge_sort.rb"
require "benchmark"

p [].merge_sort
p [5].merge_sort
p source = Array.new(20) { |i| i }
p source.merge_sort

n = 10_000
ary = Array.new(n) { |i| i }
ary_rev = ary.reverse
ary_rand1 = ary.shuffle
ary_rand2 = ary.shuffle
ary_rand3 = ary.shuffle

puts "Merge sort - #{n} elements"
Benchmark.bm(10) do |try|
  try.report("sorted") { ary.merge_sort }
  try.report("reverse") { ary_rev.merge_sort }
  try.report("random 1") { ary_rand1.merge_sort }
  try.report("random 2") { ary_rand2.merge_sort }
  try.report("random 3") { ary_rand3.merge_sort }
end
