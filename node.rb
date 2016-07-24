class Node
  attr_reader :value, :children

  def initialize(value)
    @value = value
    @children = []
  end

  def add_child(child)
    @children << child
  end

  def search(&block)
    return self if block.call == @value

    @children.each do |node|
      result = node.search(&block)
      if result != nil
        return result
      end
    end
    nil 
  end
end
