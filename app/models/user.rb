class User < ActiveRecord::Base
  attr_accessible :email, :password, :name, :biography, :profile_pic
  
  before_save :fill_name
  
  searchable do 
    text :name, :email
  end
  # Remember to reindex after adding new fields and user models
    
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
  
  has_many :friendships, 
    foreign_key: :friender_id
  has_many :friends, 
    through: :friendships, 
    source: :friendee
  
  has_many :follows, 
    foreign_key: :follower_id
  has_many :followers, 
    through: :follows, 
    source: :follower
  
  # has_many :reverse_follows, 
  #   class_name: "Follow", 
  #   foreign_key: :follower_id
  
  has_many :followings, 
    through: :follows, 
    source: :followee

  has_attached_file :profile_pic, 
    s3_host_name: "s3-us-west-1.amazonaws.com", 
    default_url: "/assets/placeholder.jpg"
  
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
  
  def follow(user)
    Follow.create(follower_id: self.id, followee_id: user.id)
  end
  
  def as_json(options={})
    result = super({
      only: [:name, :biography]
    }.merge(options))
    
    result
  end
  
  def events
    @events = []
    event_names = ['friendships', 'taggings', 'reviews', 'comments']
    event_names.each do |event|
      @events += self.send(event)
    end
    @events.sort_by! {|event| event.created_at }
    
    @events
  end
    
  private
  
  def fill_name
    if email && name.nil?
      name = email
    end
  end
  
end
