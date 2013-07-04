object @user 
attributes :name
child :friendships do 
	attributes :friender_id, :friendee_id, :created_at, :updated_at
	child :friender do
		attributes :name
	end
	child :friendee do
		attributes :name 
	end
end
child :reviews do 
	attributes :body, :title, :stars, :created_at, :updated_at
	child :book do 
		attributes :title, :cover
	end
end
child :taggings do 
	attributes :name, :created_at, :updated_at
	child :book do 
		attributes :title, :cover
	end
end
