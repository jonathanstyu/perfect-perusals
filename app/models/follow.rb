class Follow < ActiveRecord::Base
  attr_accessible :follower_id, :followee_id
  
  belongs_to :follower, 
    class_name: "User"
    
  belongs_to :followee, 
    class_name: "User"
end
