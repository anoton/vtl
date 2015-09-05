class Menu < ActiveRecord::Base
  attr_accessible :path, :side, :title, :top, :importance
  
  
  scope :top, where(:top=>true)
  scope :side, where(:side=>true)
end
