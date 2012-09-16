class Group < ActiveRecord::Base
  attr_accessible :name, :owner_id

  has_many :shares
  has_many :shared_resources, :through => :shares, :source => :resource
  belongs_to :owner, :class_name => 'User'
  has_many :group_user
  has_many :users, :through => :group_user

  after_create do
    GroupUser.find_or_create_by_user_id_and_group_id(self.owner_id, self.id) 
  end
 
  
end
