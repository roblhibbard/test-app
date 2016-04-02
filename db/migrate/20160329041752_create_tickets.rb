class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :subject, :null => false
      t.text :description, :null => false
      t.string :ticket_priority
      t.boolean :closed
      t.string :closed_by
      t.datetime :closed_date
      t.text :resolution
      t.integer :user_id, :null => false
      t.integer :assigned_to_id
      t.text :assigned_to_username
      t.integer :priority_list_id
      t.integer :status_id, :null =>false, :default =>1
      t.string :created_by
      t.string :edited_by
      
      t.timestamps
    end
  end
end
