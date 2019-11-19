require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
  include Dance
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

# it 'extends the MetaDancing module' do
# expect(Dancer).to have_class_dance_methods