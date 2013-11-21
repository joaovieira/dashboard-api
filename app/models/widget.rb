class Widget
  include Mongoid::Document
  
  field :name, type: String
  field :title, type: String
  field :description, type: String
  
  belongs_to :category
  has_many :sites
end