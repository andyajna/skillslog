class Domain < ActiveRecord::Base
  attr_accessible :curriculum, :name, :stream
  has_many :skills
end
