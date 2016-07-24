require_relative 'tree'

describe Tree do
  it "searches" do
    root = Node.new("body")
    root.add_child(Node.new("div"))
    ptree = Node.new("p")
    ptree.add_child(Node.new("b"))
    divtree = Node.new("div")
    divtree.add_child(Node.new("p"))
    divtree.add_child(ptree)
    root.add_child(divtree)
    root.add_child(Node.new("div"))
    tree = Tree.new(root)
    node1 = tree.search {"b"}
    expect(node1.value).to eq("b")
    node2 = tree.search {"c"}
    expect(node2).to be(nil)
  end
end
