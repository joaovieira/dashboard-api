class Input
  include Mongoid::Document
  
  field :favorite, type: Boolean
  field :title, type: String
  field :description, type: String
  field :timestamp, type: String
end
