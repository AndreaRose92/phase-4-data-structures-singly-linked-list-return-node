require_relative './node'
require 'pry'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    elements = []
    current = @head
    # binding.pry
    if current != nil
      while current.next_node != nil
        elements << current.value
        current = current.next_node
      end
    else
      return nil
    end
    elements << current.value
    # binding.pry
    if elements.empty?
      return nil
    else
      if (n <= elements.size && n > 0)
        elements[elements.size - n]
      else
        return nil
      end
    end
  end

end
