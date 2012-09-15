class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.integer :owner_id
      t.boolean :publicly_searchable
      t.boolean :owner_groups_searchable
      t.boolean :available

      t.timestamps
    end
  end
end
