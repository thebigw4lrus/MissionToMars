=begin
  * Name: Position 
  * Description: This class represents the exact position of the rover over the plateau 
  * Input: Position.new(x, y)
  * Author: Javier A. Contreras V.
  * Date: MAr 19, 2015
=end
class Position
  
  attr_accessor :x, :y

  def initialize(*current_position)
    @x = (current_position[0] || 0).to_i
    @y = (current_position[1] || 0).to_i
  end

end


   
