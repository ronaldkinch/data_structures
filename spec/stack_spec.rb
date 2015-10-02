require "spec_helper"
require "stack.rb"

describe "stack list" do
  it "has result for valid input" do
    list = Stack.new
    list.push 3
    list.push "a"
    assert_equal list.pop, "a"
    assert_equal list.pop, 3
    assert_raises(RuntimeError){list.pop}
    begin
      list.pop
    rescue RuntimeError => re
      assert_equal re.message, "EmptyStackError"
    end
  end
end
