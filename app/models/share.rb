class Share < ActiveRecord::Base
  attr_accessible :group_id, :resource_id, :user_id
  belongs_to :resource
  belongs_to :group

end
