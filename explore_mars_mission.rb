=begin
  * Name: ExploreMarsMission 
  * Description: This Class represents the Mission itself  it plays like a "controller" orchestrating the complete operation.
  * Author: Javier A. Contreras V.
  * Date: Mar 19, 2015
=end
class ExploreMarsMission
  
  attr_accessor :initial_state

  def self.run(&block)
    mission = ExploreMarsMission.new()
    mission.instance_eval &block
  end

  def initialize
    @rovers = []
  end

  def setup_mission
    coordinate = @initial_state.shift
    plateau ||= Plateau.new(coordinate)
    @initial_state.each_slice(2) {|rover_input| @rovers << Rover.new(rover_input, plateau)}     
  end

  def begin_rovers_recon()
    @rovers.each(&:execute_movement_batch)
  end

  def get_rovers_location()
    @rovers.map(&:get_position_and_direction)
  end
end


   
