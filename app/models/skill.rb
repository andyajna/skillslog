class Skill < ActiveRecord::Base
  attr_accessible :name, :observed, :performed, :standard, :taught
  belongs_to :domain
  has_many :users, :through => :domain
end
