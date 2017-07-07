module MyStack
  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
      @value = value
      @next_node = next_node
    end
  end

  class Stack
    def initialize
      @first = nil
    end

    def pop
      raise "Stack is empty" if empty?
      value = @first.value
      @first = @first.next_node
      value
    end

    def push(val)
      @first = Node.new(val, @first)
    end

    def peek
      raise "Stack is empty" if empty?
      @first.value
    end

    def empty?
      @first.nil?
    end
  end
end
