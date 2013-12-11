class Input
  include Mongoid::Document

  field :feed_id, type: Integer
  field :title, type: String
  field :description, type: String
  field :timestamp, type: String
  field :occupation, type: Integer
  
  belongs_to :site
  embeds_many :tuples, store_as: 'data'
end
