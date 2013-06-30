class Book < ActiveRecord::Base
  attr_accessible :title, :author, :synopsis, :cover_image
end
