class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user
      t.string :email
      t.string :status
      t.string :address
      t.string :town
      t.string :zipcode
      t.decimal :lattitude
      t.decimal :longitude
      t.integer :route
      t.integer :stop_on_route
      t.decimal :total
      t.string :order_date

      t.timestamps
    end
  end
end
