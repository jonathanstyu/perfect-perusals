class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.string :title
      t.integer :reviewer_id
      t.integer :stars
      t.timestamps
    end
  end
end
