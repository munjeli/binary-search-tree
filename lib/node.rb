# this node refers to the node of a graph or tree.
class Node
  attr_accessor :name, :weight, :left, :right

  # in this project, no two nodes can have the same weight
  # or name for inserts to work. Keep that in mind if
  # you want to make a big tree out of random data.
  def initialize(name, weight)
    @name = name
    @weight = weight
    @left = nil
    @right = nil
  end
end
