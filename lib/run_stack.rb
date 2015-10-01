require_relative "stack.rb"

stack = Stack.new
10.times { |n| stack.push n }
p stack
10.times { p stack.pop }
p stack.pop
