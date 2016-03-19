=begin
  * Name: MissionTestCases 
  * Description: Nasa Rovers Unit tests - Mission focused
  * Author: Javier A. Contreras V.
  * Date: Mar 19, 2015
=end 
require 'test/unit'
require_relative '../explore_mars_mission'

class MissionTestCases < Test::Unit::TestCase
  #each input's & result's element array, represents a line(refers to the input & output section within the requirement document). 
  def test_case_main
    input = ["5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM"]
    results =  
    ExploreMarsMission.run do 
       @initial_state = input 
       setup_mission
       begin_rovers_recon
       get_rovers_location
     end
    assert_equal ["1 3 N", "5 1 E"], results
  end  

end
