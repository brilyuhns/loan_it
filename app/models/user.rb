class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :resource ,:foreign_key => :owner_id
#  has_many :owned_groups, :forei gn_key => :owner_id, :source => :group
  has_many :group_user
  has_many :groups, :through => :group_user
end
