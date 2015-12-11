require 'minitest/autorun'
require 'minitest/pride'
require './day_6.rb'

class TestAdvent < MiniTest::Test

  def test_truth
    assert true
  end


  def test_6_clean
    input = """turn off 660,55 through 986,197
    turn off 341,304 through 638,850"""

    assert_equal [
      {"action" => "off", "start" => "660,55","end" => "986,197"},
      {"action" => "off", "start" => "341,304","end" => "638,850"}
    ], clean_input(input)
  end


  def test_6_grid
#
    grid = create_grid
    # print grid

    assert grid["Point: 100,100"]['x']
    assert grid["Point: 100,100"]['y']
    # assert grid[0]['x']
    # assert grid[0]['y']
    # assert grid[999]['x']
    # assert grid[999]['y']

    assert_equal 47, grid["Point: 0,47"]['y']
    # refute grid[1000]
  end

  # def test_6_operation
  #   grid = create_grid
  #   grid = grid_operation(grid,instructions)
  #
  #
  #   assert_equal grid[0], "on"
  #   assert_equal grid[1], "on"
  #   assert_equal grid[2], "on"
  # end





end
