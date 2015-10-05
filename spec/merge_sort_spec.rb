require "spec_helper"
require "merge_sort.rb"

describe "merge sort" do
  it "returns empty if input empty" do
    assert_equal [], [].merge_sort
  end

  it "returns sorted of single element input" do
    assert_equal [5], [5].merge_sort
  end

  it "returns sorted array of input" do
    result = Array.new(20) { |i| i }
    assert_equal result, result.shuffle.merge_sort
  end
end

system 'rubocop'
