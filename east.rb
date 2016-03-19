=begin
  * Name: East 
  * Description: This class act as a Direction Subclass. It represents each "state" being the state pattern approach implemented. 
  * Input: East.new(rover)
  * Author: Javier A. Contreras V.
  * Date: Mar 19, 2015
=end

class East
  include Direction

  def turn_right()
    @rover.set_moving_direction("S")
  end

  def turn_left()
    @rover.set_moving_direction("N")
  end

  def move()
    @rover.set_position(rover.position.x + 1, rover.position.y) unless @rover.plateau.check_coordinates(rover.position.x + 1, rover.position.y)
  end

  def get_alias
    "E"
  end

end


   
