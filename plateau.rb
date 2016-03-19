=begin
  * Name: Plateau 
  * Description: This class represents the rover working area. It has fixed dimensions.
  * Input: Plateau.new("X Y")
  * Author: Javier A. Contreras V.
  * Date: Mar 19, 2015
=end
class Plateau
  
  attr_accessor :x, :y

  def initialize(plateau_dimension)
    dimensions = plateau_dimension.split
    @x = dimensions.first.to_i
    @y = dimensions.last.to_i
  end

  def check_coordinates(x, y)
  raise "err003-Coordinates out of Range" if (x > @x or y > @y)
  end

end


   
