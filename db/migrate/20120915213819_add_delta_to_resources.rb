class AddDeltaToResources < ActiveRecord::Migration
  def change
    add_column :resources, :delta, :boolean, :default => true, :null => false
  end
end
