require_relative 'node'

class LinkedList
  def initialize(val)
    @head = Node.new(val,nil)
  end

  def add(val)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(val,nil)
  end

  def delete(val)
    current.next = @head

    if current.val = d
      @head = current.next
    else
      while(current.next != nil) && (current.next.val != val)
        current = current.next
      end

      current.next = current.next.next unless current.next.nil?
    end
  end

  def return_list
    elements = []
    current = @head
    while current.next != nil
      elements << current
      current = current.next
    end
    elements << current
  end
end
