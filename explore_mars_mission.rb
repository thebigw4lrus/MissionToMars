=begin
  * Name: ExploreMarsMission 
  * Description: This Class represents the Mission itself  it plays like a "controller" orchestrating the complete operation.
  * Author: Javier A. Contreras V.
  * Date: Mar 19, 2015
=end
class ExploreMarsMission
  
  attr_accessor :input

  def self.run(&block)
    mission = ExploreMarsMission.new()
    mission.instance_eval &block
  end

  def initialize
    @rovers = []
  end

  def setup_mission
    cardinal = @input.shift
    @input.each_slice(2) do |rover_input|
      coordinates = rover_input.first.split(' ')
      orientation = coordinates.pop

      position = Position.new(coordinates)
      movements = rover_input.last
      plateau = Plateau.new(cardinal)
      @rovers << Rover.new(position, orientation,
                           movements, plateau)
    end
  end

  def begin_rovers_recon()
    @rovers.each(&:execute_movement_batch)
  end

  def get_rovers_location()
    @rovers.map(&:get_position_and_direction)
  end
end


   
