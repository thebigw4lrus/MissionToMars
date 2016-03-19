=begin
  * Name: West 
  * Description: This class act as a Direction Subclass. It represents each "state" being the state pattern approach implemented. 
  * Input: West.new(rover)
  * Author: Javier A. Contreras V.
  * Date: MAr 19, 2015
=end
class West
  include Direction
   
  def turn_right()
    @rover.set_direction("N")
  end

  def turn_left()
    @rover.set_direction("S")
  end

  def move()
    @rover.position.x -= 1
  end

  def get_alias
    "W"
  end

end


   
