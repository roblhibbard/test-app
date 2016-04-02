class Addservicetotickets < ActiveRecord::Migration
  def change
    add_column :tickets, :service, :string
  end
end
