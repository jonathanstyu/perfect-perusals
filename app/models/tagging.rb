class Tagging < ActiveRecord::Base
  attr_accessible :name, :book_id, :user_id
  
  belongs_to :book
  belongs_to :tagger, :class_name => "User"
  
  validates_uniqueness_of :book_id, 
    scope: [:user_id, :name]
  
  def as_json(options={})
    result = super({
      except: :user_id, 
      include: {book: {
        only: [:title], 
        methods: [:avg_rating, :author_names, :cover]
      }}
    }.merge(options))

    result['created_at'] = result['created_at'].strftime("%m-%d-%y")
    result['updated_at'] = result['updated_at'].strftime("%m-%d-%y")

    result 
  end
    
end
