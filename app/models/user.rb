class User < ActiveRecord::Base
  attr_accessible :email, :password, :name 
  
  before_save :fill_name
    
  has_many :authorships, 
    :foreign_key => :author_id
  has_many :authored_books, 
    :through => :authorships, 
    :source => :book
  
  has_many :reviews, 
    :foreign_key => :reviewer_id,
    :inverse_of => :reviewer
  has_many :comments, 
    foreign_key: :commenter_id
    
  has_many :taggings, 
    foreign_key: :user_id
  has_many :tagged_books, 
    :through => :taggings, 
    source: :book
  
  has_many :friendships, foreign_key: :friender_id
  has_many :friends, through: :friendships, source: :friendee
  
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
  
  def friend(user)
    self.friends << user
    user.friends << self
  end
  
  private
  
  def fill_name
    if email && name.nil?
      name = email
    end
  end
  
end
