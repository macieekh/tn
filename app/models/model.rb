class Model < ActiveRecord::Base
  attr_accessible :brand, :name
  has_many :copiers
end
