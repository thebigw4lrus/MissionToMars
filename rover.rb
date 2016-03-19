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

  def initialize(position_and_movements, plateau)
    position_args = position_and_movements[0].split
    set_moving_direction position_args[2]
    @position, @movements_list, @plateau = Position.new(position_args[0], position_args[1]), position_and_movements[1], plateau
  end
  def set_position(x, y)
    @position.x, @position.y = x, y
  end
  #State Setter
  def set_moving_direction(direction)
    case direction.capitalize 
      when "N" then @moving_direction = North.new(self)
      when "S" then @moving_direction = South.new(self)
      when "E" then @moving_direction = East.new(self)
      when "W" then @moving_direction = West.new(self)
      else raise "err002-direction unknown"
    end 
  end

  def get_position
    @position.x.to_s << " " << @position.y.to_s
  end

  def get_position_and_direction
    get_position <<  " " << @moving_direction.get_alias
  end

  def execute_movement_batch
    @movements_list.split('').each {|move| execute_command(move)}
  end
  #Using this methods the state can be changed
  def execute_command(command)
    case command.capitalize
      when "L" then @moving_direction.turn_left
      when "R" then @moving_direction.turn_right
      when "M" then @moving_direction.move
      else raise "err001-command unknown"
    end 
  end

end


   
