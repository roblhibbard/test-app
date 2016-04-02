class PriorityLists < ActiveRecord::Migration
  def change
    create_table :priority_lists do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
