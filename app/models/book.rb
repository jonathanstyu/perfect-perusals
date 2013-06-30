class Book < ActiveRecord::Base
  attr_accessible :title, :synopsis, :cover_image
  
  has_many :authorships, 
    :foreign_key => :book_id
  has_many :authors, 
    :through => :authorships, 
    :source => :author
  
  has_many :reviews, 
    :foreign_key => :book_id,
    :inverse_of => :book
  
end
