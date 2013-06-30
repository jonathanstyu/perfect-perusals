class Book < ActiveRecord::Base
  attr_accessible :title, :author, :synopsis, :cover_image
  
  has_many :authorships
  has_many :authors, 
  :through => :authorship, 
  :source => :user
  
end
