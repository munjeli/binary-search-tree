require_relative 'node'

# a controller in this context is just
# a tree factory we can repeatedly call
# to build out a binary tree with inserts
class Controller
  attr_accessor :root

  # a new Controller is initialized with a
  # node object
  def initialize(node)
    @root = node
  end

  # this is a recursive implementation because
  # btrees are a classic example of recursion
  # the method will return true on success
  def insert(node = @root, name, weight)
    return(warn('You cannot have two nodes with the same name.')) if name == node.name
    if weight < node.weight
      if node.left.nil?
        node.left = Node.new(name, weight)
        puts 'true'
      else
        puts 'false'
        insert(node.left, name, weight)
      end
    elsif weight > node.weight
      if node.right.nil?
        puts 'true'
        node.right = Node.new(name, weight)
      else
        puts 'false'
        insert(node.right, name, weight)
      end
    else
      return(warn('You cannot insert a node with a duplicate weight.'))
    end
  end

  # the &block ruby syntax just returns a callback
  def order_nodes(node = @root, &block)
    return if node.nil?
    order_nodes(node.left, &block)
    yield node
    order_nodes(node.right, &block)
  end

  def print_ordered_nodes
    order_nodes do |node|
      puts node.weight
    end
  end
end
