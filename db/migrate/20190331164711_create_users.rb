class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :role
      t.string :address
      t.string :town
      t.integer :zipcode
      t.decimal :lattitude
      t.decimal :longitude
      t.integer :route
      t.integer :stop_on_route
      t.decimal :balance

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
