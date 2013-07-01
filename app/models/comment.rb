class Comment < ActiveRecord::Base
  attr_accessible :review_id, :commenter_id, :text
  
  belongs_to :review
  belongs_to :commenter, 
    class_name: "User"
end
