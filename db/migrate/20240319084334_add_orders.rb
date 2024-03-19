class AddOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :orders_input
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
