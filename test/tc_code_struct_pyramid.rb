require_relative "../code/code_structure_pyramid"
require "test/unit"
 
class Test_code_structure_pyramid < Test::Unit::TestCase
 
  def test_left
   assert_equal("*\n**\n***\n****\n*****\n", Pyramid.new(5).left )

  end

  def test_right
  	assert_equal("    *\n   **\n  ***\n ****\n*****\n", Pyramid.new(5).right )
  end

  def test_center
  	assert_equal("    * \n   * * \n  * * * \n * * * * \n* * * * * \n", Pyramid.new(5).center )
  end
 
end