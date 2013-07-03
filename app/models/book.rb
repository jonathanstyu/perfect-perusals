class Book < ActiveRecord::Base
  attr_accessible :title, :synopsis, :cover_image, :isbn, :cover_photo, :authors_attributes
  
  has_many :authorships, 
    :foreign_key => :book_id
  has_many :authors, 
    :through => :authorships, 
    :source => :author
  
  has_many :reviews, 
    :foreign_key => :book_id,
    :inverse_of => :book
  
  has_many :taggings
  has_many :tagged_books, 
    through: :taggings

  validates :isbn, 
    :uniqueness => true 

  searchable do 
    text :title, :isbn
  end
  
  has_attached_file :cover_photo, 
    s3_host_name: "s3-us-west-1.amazonaws.com"

  accepts_nested_attributes_for :authors

  def avg_rating
    return 0.0 if self.reviews.empty?
    star_sum = self.reviews.collect {|review| review.stars }.sum
    return (star_sum / self.reviews.size).to_f
  end
  
  def author_names
    self.authors.map {|author| author.name.capitalize }
  end
  
end
