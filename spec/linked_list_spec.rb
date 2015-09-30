require "spec_helper"
require "linked_list.rb"

describe "singly linked list" do
  it "has result for valid input" do
    list = LinkedList.new
    assert_equal list.to_s, ""
    list.insert(Node.new("hello"))
    assert_equal list.to_s, "hello"
    list.insert(Node.new(3), 1)
    assert_equal list.to_s, "hello, 3"
    list.insert(Node.new(:one), :HEAD)
    assert_equal list.to_s, "one, hello, 3"
    list.insert(Node.new("bye"), :last)
    assert_equal list.to_s, "one, hello, 3, bye"
    list.insert(Node.new("last"), -1)
    assert_equal list.to_s, "one, hello, 3, bye, last"
    assert_equal list.search("hello"), 1
    assert_equal list.search("byebye"), nil
    list.remove(3)
    assert_equal list.to_s, "one, hello, bye, last"
    assert_equal list.remove("byebye"), nil
    assert_equal list.to_s, "one, hello, bye, last"
  end
end
