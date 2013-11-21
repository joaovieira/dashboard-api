class Input
  include Mongoid::Document

  field :feed_id, type: Integer
  field :title, type: String
  field :description, type: String
  field :timestamp, type: String
  
  belongs_to :site
end
