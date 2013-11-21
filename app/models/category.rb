class Category
  include Mongoid::Document
  
  field :name, type: String
  field :title, type: String
  
  has_many :widgets
end
