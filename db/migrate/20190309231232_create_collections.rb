class CreateCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :collections do |t|
      t.string :title
      t.string :user
      t.string :access_code

      t.timestamps
    end
  end
end
