class AddPhototoBook < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :cover_photo
    end
  end

  def self.down
    drop_attached_file :books, :cover_photo
  end
end
