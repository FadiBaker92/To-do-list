require 'minitest/autorun'
require './list.rb'

class TestViewlist < Minitest::Test

  def test_viewlist
    viewlist = WorkoutList.new
    assert_equal nil , viewlist.view_list, "List is not empty"
  end

end
