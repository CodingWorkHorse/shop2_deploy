class AddListIdColumnToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :sub_category, :string
  end
end
