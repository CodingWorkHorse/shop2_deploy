class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :content
      t.string :user
      t.string :class
      t.string :collection
      t.string :organization
      t.string :topic

      t.timestamps
    end
  end
end
