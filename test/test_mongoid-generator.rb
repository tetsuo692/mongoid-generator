require 'helper'
require 'generators/mongoid'
class TestMongoidGenerator < Test::Unit::TestCase
  include MongoidGenerators::TestHelper
  
  def setup
    @destination = File.join('tmp', 'test_app')
    @source = Mongoid::Generators::Base.source_root
    Mongoid::Generators::Base.start(['model', 'Account'], :destination_root => @destination)
  end
  
  def test_something
    flunk "failed"
  end
end
