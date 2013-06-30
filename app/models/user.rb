class User < ActiveRecord::Base
  attr_accessible :email, :password
  
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
