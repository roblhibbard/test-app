class Addcustomertotickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :customer, index: true
  end
end
