=begin
  * Name: RoversAcceptanceTestCases 
  * Description: Nasa Rovers Unit tests - Rover focused
  * Author: Javier A. Contreras V.
  * Date: Mar 19, 2015
=end 
require 'test/unit'
require_relative '../explore_mars_mission'
require_relative '../plateau'
require_relative '../rover'
require_relative '../north'
require_relative '../south'
require_relative '../east'
require_relative '../west'
require_relative '../direction'
require_relative '../position'

class RoversAcceptanceTestCases < Test::Unit::TestCase

  def test_case_initalize_rover
    rover = Rover.new(["5 5 N", "LRLRLRMMM"], Plateau.new("5 5"))
    assert_equal "5 5 N", rover.get_position_and_direction
  end

  def test_case_rover_move_single_left
    rover = Rover.new(["5 5 E", "LRLRLRMMM"], Plateau.new("5 5"))
    rover.execute_command("L")
    assert_equal "5 5 N", rover.get_position_and_direction
  end

  def test_case_rover_move_single_right
    rover = Rover.new(["5 5 S", "LRLRLRMMM"], Plateau.new("5 5"))
    rover.execute_command("R")
    assert_equal "5 5 W", rover.get_position_and_direction
  end

  def test_case_rover_move_single_ahead
    rover = Rover.new(["5 4 N", "LRLRLR"], Plateau.new("5 5"))
    rover.execute_command("M")
    assert_equal "5 5 N", rover.get_position_and_direction
  end

end
