gem 'minitest', '~>5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

require 'pry'
class LinkedListTest < Minitest::Test
  def test_if_head_contains_data
    list = LinkedList.new
    list.head

    assert_nil list.head
  end

  def test_if_append_adds_data
    list = LinkedList.new

    assert_equal "doop", list.append("doop")
  end


  def test_if_list_is_linked
    list = LinkedList.new
    list.append("something")

    assert_equal Node, list.head.class
    assert_equal "something", list.head.data
    assert_nil list.head.next_node
  end

  def test_if_count_works
    list = LinkedList.new
    list.append("words")
    list.append("crap")

    assert_equal 2, list.count
  end

  def test_if_to_string_returns_string
    list = LinkedList.new
    list.append("stuff")

    assert_equal "stuff", list.head.data
  end

  def test_if_another_append_creates_next_node
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    refute nil, list.head.next_node
  end

  def test_if_next_to_string_concatenates
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("chicken")

    assert_equal "doop deep chicken", list.to_string
  end

  def test_additional_append_data
    list = LinkedList.new
    list.append("checking")
    list.append("this")
    list.append("thing")

    assert_equal "thing", list.head.next_node.next_node.data
  end

  def test_if_prepend_subs_head_node
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    assert_equal "dop plop suu", list.to_string
  end
end
