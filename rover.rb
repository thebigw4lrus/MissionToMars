=begin
  * Name: Rover 
  * Description: This class represents the rover.
  * Input: Rover.new([initial_position, list_of_movements], Plateau.new)
  * Author: Javier A. Contreras V.
  * Date: Mar 19, 2015
=end
require_relative 'direction'
class Rover
  
  attr_accessor :position, :plateau

  def initialize(position, orientation, movements, plateau)
    @position = position
    @movements = movements
    @plateau = plateau
    set_direction(orientation)
  end
  def set_position(x, y)
    @position.x, @position.y = x, y
  end
  #State Setter
  def set_direction(direction)
    @direction = case direction.capitalize 
      when "N" then North.new(self)
      when "S" then South.new(self)
      when "E" then East.new(self)
      when "W" then West.new(self)
      else raise "err002-direction unknown"
    end 
  end

  def get_position
    @position.x.to_s << " " << @position.y.to_s
  end

  def get_position_and_direction
    get_position <<  " " << @direction.get_alias
  end

  def execute_movement_batch
    @movements.split('').each {|move| execute_command(move)}
  end

  def execute_command(command)
    case command.capitalize
      when "L" then @direction.turn_left
      when "R" then @direction.turn_right
      when "M" then @direction.move
      else raise "err001-command unknown"
    end 
  end

end


   
