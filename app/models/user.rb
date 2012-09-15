class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :resource ,:foreign_key => :owner_id
end
