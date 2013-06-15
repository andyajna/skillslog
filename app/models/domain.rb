class Domain < ActiveRecord::Base
  attr_accessible :curriculum, :name, :stream
  belongs_to :user
  has_many :skills
  has_many :user_histories, :through => :skills


  accepts_nested_attributes_for :skills,
  	:reject_if => :all_blank


end
