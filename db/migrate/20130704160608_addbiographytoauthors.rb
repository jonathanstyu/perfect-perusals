class Addbiographytoauthors < ActiveRecord::Migration
  def up
    add_column :users, :biography, :text
  end

  def down
    remove_column :users, :biography, :text
  end
end
