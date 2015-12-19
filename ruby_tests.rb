require 'minitest/autorun'
require 'minitest/pride'
require './day_14.rb'
# require './day_6.rb'

class TestAdvent < MiniTest::Test

  def test_truth
    assert true
  end

  def test_14_reindeer
    comet = Reindeer.new(name: "comet",speed: 14,duration: 10, rest: 120)

    # assert Reindeer.new("danai",14,10,120)
    assert_equal 14, comet.speed
    assert_equal 120, comet.rest
    assert_equal 10, comet.duration
  end

  def test_14_flight
    comet = Reindeer.new(name: "comet",speed: 14,duration: 10, rest: 120)

     assert_equal 140, comet.fly(10)
     assert_equal 140, comet.fly(12)
     assert_equal 154, comet.fly(131)

  end


  # def test_6_clean
  #   input = """turn off 660,55 through 986,197
  #   turn off 341,304 through 638,850"""
  #
  #   assert_equal [
  #     {"action" => "off", "start" => "660,55","end" => "986,197"},
  #     {"action" => "off", "start" => "341,304","end" => "638,850"}
  #   ], clean_input(input)
  # end
  #
  #
  # def test_6_grid
  #   grid = create_grid
  #   # print grid
  #
  #   assert grid["Point: 100,100"]['x']
  #   assert grid["Point: 100,100"]['y']
  #   assert grid["Point: 999,100"]['y']
  #   assert grid["Point: 53,10"]['y']
  #   assert grid["Point: 750,452"]['y']
  #
  #   assert_equal 47, grid["Point: 0,47"]['y']
  #   assert_equal "off", grid["Point: 0,47"]['status']
  # end
  #
  #
  # def test_6_status
  #   a = "on"
  #   b = "off"
  #   c = "toggle"
  #
  #
  # end
  #
  # def test_6_operation
  #   instructions = [
  #     {"action" => "off", "start" => "0,0","end" => "0,1"},
  #     {"action" => "on", "start" => "1,1","end" => "1,2"},
  #     {"action" => "toggle", "start" => "2,2","end" => "2,3"}
  #   ]
  #
  #   grid = {
  #     "a" => {"status" => "off", "x" => 0, "y" => 0 },
  #     "b" => {"status" => "off", "x" => 1, "y" => 1 },
  #     "c" => {"status" => "off", "x" => 2, "y" => 2 },
  #     "d" => {"status" => "off", "x" => 2, "y" => 3 },
  #     "e" => {"status" => "off", "x" => 1, "y" => 2 }
  #   }
  #   grid = grid_operation(grid,instructions)
  #
  #
  #   assert_equal "off", grid["a"]['status']
  #   assert_equal "on", grid["b"]['status']
  #   assert_equal "off", grid["c"]['status']
  #   assert_equal "off", grid["d"]['status']
  #   assert_equal "on", grid["e"]['status']
  # end

end
