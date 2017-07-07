module MyQueue
  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
      @value = value
      @next_node = next_node
    end
  end

  class Queue
    def initialize
      @first = nil
      @last = nil
    end

    def add(val)
      new_node = Node.new(val, @last)
      @last.next_node = new_node unless @last.nil?
      @last = new_node
      @first = @last if @first.nil?
    end

    def remove
      raise 'Queue is empty' if empty?
      value = @first.value
      @first = @first.next_node
      @last = nil if @first.nil?
      value
    end

    def peek
      raise 'Stack is empty' if empty?
      @first.value
    end

    def empty?
      @first.nil?
    end
  end
end
