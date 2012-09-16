class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :email, :uniqueness => true
  
  has_many :resource ,:foreign_key => :owner_id
end
