=begin
  * Name: Direction 
  * Description: This class represents the context class for the states. It has the reference to the rover.
  * Author: Javier A. Contreras V.
  * Date: Mar 19, 2015
=end
module Direction
  attr_accessor :rover

  def initialize(rover)
    @rover = rover
  end
end


   
