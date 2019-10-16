require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../lib/character'
require_relative '../lib/show'
require_relative '../lib/network'

class NetworkTest < Minitest::Test

  def test_does_instance_of_network_exist

    nbc = Network.new("NBC")
    assert_instance_of Network, nbc
  end 



end
