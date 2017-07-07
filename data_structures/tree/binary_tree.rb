module BinaryTree
  class Node
    include Enumerable

    attr_accessor :data, :left, :right
    def initialize(data)
      @data = data
    end

    def in_order(&block)
      left.in_order(&block) if left
      block.call(self)
      right.in_order(&block) if right
    end

    def pre_order(&block)
      block.call(self)
      left.pre_order(&block) if left
      right.pre_order(&block) if right
    end

    def post_order(&block)
      left.post_order(&block) if left
      right.post_order(&block) if right
      block.call(self)
    end

    def <=>(other_node)
      data <=> other_node.data
    end
  end
end

root = BinaryTree::Node.new(3)
root.left = BinaryTree::Node.new(2)
root.right = BinaryTree::Node.new(1)
puts "INORDER"
root.in_order { |x| puts x.data }
puts "PREORDER"
root.pre_order { |x| puts x.data }
puts "POSTORDER"
root.post_order { |x| puts x.data }
