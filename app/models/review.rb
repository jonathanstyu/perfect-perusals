class Review < ActiveRecord::Base
  attr_accessible :title, :body, :stars, :reviewer_id, :book_id
  
  belongs_to :reviewer, 
    :class_name => "User"
  
  belongs_to :book
  
  validates :stars, :presence => true, :inclusion => {in: 1..5 }
  validates :book, :presence => true
  
end
