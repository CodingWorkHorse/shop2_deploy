class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.string :driver
      t.string :vehicle
      t.decimal :cargo_capacity
      t.string :departure_address
      t.string :departure_lattitude
      t.string :departure_longitude
      t.string :stop_1_address
      t.string :stop_2_address
      t.string :stop_3_address
      t.string :stop_4_address
      t.string :stop_5_address
      t.string :stop_6_address
      t.string :return_address
      t.string :return_lattitude
      t.string :return_longitude

      t.timestamps
    end
  end
end
