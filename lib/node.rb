# this node refers to the node of a graph or tree.
class Node
  attr_accessor :name, :weight, :left, :right

  # in this example, no two nodes can have the same weight
  # or name for inserts to work.
  def initialize(name, weight)
    @name = name
    @weight = weight
    @left = nil
    @right = nil
  end
end
