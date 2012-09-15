class Resource < ActiveRecord::Base
  attr_accessible :available, :category_id, :description, :name, :owner_groups_searchable, :owner_id, :publicly_searchable

  has_many :shares
  has_many :shared_groups, :through => :shares, :source => :group
  belongs_to :category
  belongs_to :user, :foreign_key => :owner_id

  define_index do
    indexes :name
    indexes description

    has shared_groups(:id), :as => :shared_group_ids
    has :publicly_searchable
    
    set_property :delta => true
  end

end
