class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessor :password, :password_confirmation, :current_password
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first, :last, :role
  # attr_accessible :title, :body

 def name
 	self.first + ' ' + self.last
 end

 ROLES = %w[intern resident]
 FULLROLES = %w[admin intern resident]

 has_one :domain
 has_many :skills, :through => :domain

 accepts_nested_attributes_for :domain,
    :reject_if => :all_blank,
    :allow_destroy => true
 accepts_nested_attributes_for :skills

end
