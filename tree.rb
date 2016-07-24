require_relative "node"

class Tree
  def initialize(node)
    @root = node
  end

  def search(&block)
    return @root if block.call == @root.value
    
    @root.children.each do |node|
      result = node.search(&block)
      if result != nil
        return result
      end
    end

    nil 
  end
end
