require "spec_helper"
require "insertion_sort.rb"

describe "insertion sort" do
  it "returns empty if input empty" do
    assert_equal [], [].insertion_sort
  end

  it "returns sorted of single element input" do
    assert_equal [5], [5].insertion_sort
  end

  it "returns sorted array of input" do
    result = Array.new(20) { |i| i }
    source = result.shuffle
    assert_equal result, source.insertion_sort
    refute_equal result, source
  end

  it "returns sorted array mutating input" do
    result = Array.new(20) { |i| i }
    source = result.shuffle
    assert_equal result, source.insertion_sort!
    assert_equal result, source
  end
end

system 'rubocop'
