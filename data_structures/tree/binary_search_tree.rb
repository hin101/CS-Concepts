module BinarySearchTree
  class BlankNode
    def to_a
      []
    end

    def include?(*)
      false
    end

    def push(*)
      false
    end

    def inspect
      "{}"
    end
  end

  class Node
    attr_reader :value
    attr_accessor :left, :right

    def initialize(val)
      @value = val
      @left = BlankNode.new
      @right = BlankNode.new
    end

    def push(val)
      case value <=> val
      when 1 then push_left(val)
      when -1 then push_right(val)
      when 0 then false
      end
    end
 
    def include?(val)
      case value <=> val
      when 1 then left.include?(val)
      when -1 then right.include?(val)
      when 0 then false
      end
    end

    def inspect
      "[#{value}:#{left.inspect}|#{right.inspect}]"
    end

    def to_a
      left.to_a + [value] + right.to_a
    end

    private

    def push_left(val)
      left.push(val) or self.left = Node.new(val)
    end

    def push_right(val)
      right.push(val) or self.right = Node.new(val)
    end
  end
end

tree = BinarySearchTree::Node.new(0)
tree.push(5)
tree.push(1)
puts tree.inspect
