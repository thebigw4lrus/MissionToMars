=begin
  * Name: South 
  * Description: This class act as a Direction Subclass. It represents each "state" being the state pattern approach implemented. 
  * Input: South.new(rover)
  * Author: Javier A. Contreras V.
  * Date: Mar 19, 2015
=end
class South
  include Direction
 
  def turn_right()
    @rover.set_direction("W")
  end

  def turn_left()
    @rover.set_direction("E")
  end

  def move()
    @rover.position.y -= 1
  end

  def get_alias
    "S"
  end

end


   
