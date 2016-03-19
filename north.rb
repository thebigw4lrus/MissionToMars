=begin
  * Name: North 
  * Description: This class act as a Direction Subclass. It represents each "state" being the state pattern approach implemented. 
  * Input: North.new(rover)
  * Author: Javier A. Contreras V.
  * Date: Mar 19, 2015
=end
class North
  include Direction

  def turn_right()
    @rover.set_moving_direction("E")
  end

  def turn_left()
    @rover.set_moving_direction("W")
  end

  def move()
    @rover.set_position(rover.position.x, rover.position.y + 1)  unless @rover.plateau.check_coordinates(rover.position.x, rover.position.y + 1)
  end

  def get_alias
    "N"
  end

end


   
