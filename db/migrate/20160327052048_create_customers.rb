class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :business_name
      t.integer :phone_number
      t.integer :mobile_number
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :email
    end
  end
end
