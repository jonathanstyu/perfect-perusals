class User < ActiveRecord::Base
  attr_accessible :email, :password, :name 
  
  has_many :authorships, 
    :foreign_key => :author_id
  has_many :authored_books, 
    :through => :authorships, 
    :source => :book
  
  has_many :reviews, 
    :foreign_key => :reviewer_id,
    :inverse_of => :reviewer
  
  def password=(password)
    self.password_hash = Digest::SHA2.base64digest(password)
  end
  
  def verify_password(password)
    self.password_hash == Digest::SHA2.base64digest(password)
  end
  
  def generate_token!
    self.token = SecureRandom.urlsafe_base64(24)
    self.save!
    
    self.token
  end
end
