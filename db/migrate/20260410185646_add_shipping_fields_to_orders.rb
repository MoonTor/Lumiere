class AddShippingFieldsToOrders < ActiveRecord::Migration[8.1]
  def change
    add_column :orders, :shipping_name, :string
    add_column :orders, :address, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
    add_column :orders, :zip, :string
  end
end
