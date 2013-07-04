class Friendship < ActiveRecord::Base
  attr_accessible :friender_id, :friendee_id 
  
  belongs_to :friender, class_name: "User"
  belongs_to :friendee, class_name: "User"
  
  validates_uniqueness_of :friendee_id, 
    scope: [:friender_id]
  
    
end
