class Book < ActiveRecord::Base
  attr_accessible :title, :author, :synopsis, :cover_image
  
  has_many :authorships, 
    :foreign_key => :book_id
  has_many :authors, 
    :through => :authorships, 
    :source => :author
  
end
