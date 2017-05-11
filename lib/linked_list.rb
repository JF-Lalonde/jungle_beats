require './lib/node'

class LinkedList

  attr_accessor :head, :count

  def initialize(head = nil)
    @head = head
  end

  def append(data)
    if @head == nil
      @head = Node.new(data) #First node
    else
      current_value = @head
      until current_value.next_node == nil
        current_value = current_value.next_node
      end
      current_value.next_node = Node.new(data)
    end
    data
  end

  def count
    counter = 0
    current_value = @head
    until current_value == nil
      current_value = current_value.next_node
      counter += 1
    end
    counter
  end

    def to_string
      current_value = @head
      sounds = []
      sounds << @head.data
      until current_value.next_node == nil
        current_value = current_value.next_node
        sounds << current_value.data
      end
      sounds.join(" ")
    end

    def prepend(data)
      old_head = @head
      @head = Node.new(data)
      @head.next_node = old_head
    end
end
