collection @events => :events
attributes :created_at, :updated_at
node (:type) {|event| event.class.name}

node(:tagging, :if => lambda {|event| event.class.name == "Tagging"}) do |tagging|
	tagging
end

node(:review, :if => lambda {|event| event.class.name == "Review"}) do |review|
	partial "rabl_templates/review", object: review
end

node(:friendship, :if => lambda {|event| event.class.name == "Friendship"}) do |friendship|
	partial "rabl_templates/friendship", object: friendship
end

node(:comment, :if => lambda {|event| event.class.name == "Comment"}) do |comment|
	partial "rabl_templates/comment", object: comment
end