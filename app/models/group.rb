class Group < ActiveRecord::Base
  attr_accessible :name, :owner_id

  has_many :shares
  has_many :shared_resources, :through => :shares, :source => :resource

end
