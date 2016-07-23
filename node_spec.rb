require_relative 'node'

describe Node do
  let(:parent_node) {Node.new("parent")}
  let(:child_node) {Node.new("child")}

  it "has children" do
    expect(parent_node.children).to eq([])
    parent_node.add_child(child_node)
    expect(parent_node.children).to eq([child_node])    
  end
end
