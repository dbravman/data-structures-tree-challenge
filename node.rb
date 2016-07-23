class Node
  attr_reader :value, :children

  def initialize(value)
    @value = value
    @children = []
  end

  def add_child(child)
    @children << child
  end
end
