require 'minitest/autorun'
require 'minitest/pride'

#Note: This line is going to fail first.
require './department.rb'

class ArtistAndAlbumsTest < Minitest::Test
  def test_classes_exists
    assert Employee
    assert Department
  end

  

end
