gem 'minitest', '~>5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def test_node_holds_data
    node = Node.new("plop")
    node.data

    assert_equal "plop", node.data
  end

  def test_if_next_node_is_empty
    node = Node.new("whatever")
    node.next_node

    assert_nil node.next_node
  end
end
