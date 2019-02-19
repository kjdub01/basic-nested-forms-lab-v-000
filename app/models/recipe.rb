class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_att
end
