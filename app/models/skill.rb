class Skill < ActiveRecord::Base
  attr_accessible :name, :observed, :performed, :standard, :taught
end
