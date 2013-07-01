class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.string :name
      t.integer :book_id
      t.integer :user_id
      t.timestamps
    end
  end
end
