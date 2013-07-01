class Tagging < ActiveRecord::Base
  attr_accessible :name, :book_id, :user_id
  
  belongs_to :book
  belongs_to :tagger, :class_name => "User"
  
  validates_uniqueness_of :book_id, scope: [:user_id, :name]
  
end