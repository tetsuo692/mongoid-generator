require 'helper'
require 'generators/mongoid/model/model_generator'

class MongoidGeneratorTest < Test::Unit::TestCase
  def setup
    @destination = File.join('tmp', 'test_app')
    @source = Mongoid::Generators::ModelGenerator.source_root
    
    Mongoid::Generators::ModelGenerator.start(['Account'], :destination => @source)
  end
  
  def teardown
    FileUtils.rm_rf(@destination)
  end
  
  def test_first_test
    assert File.exists?(File.join(@destination, 'app', 'model', 'account.rb'))
  end
end