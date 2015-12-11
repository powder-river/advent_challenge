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




end
