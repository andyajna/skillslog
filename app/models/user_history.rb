class UserHistory < ActiveRecord::Base
  attr_accessible :date_done, :date_observed, :date_taught, :domain_id, :skill_id, :user_id

  has_many :skills
  has_many :domain, :through => :skills

  accepts_nested_attributes_for :domain
  accepts_nested_attributes_for :skills

end
