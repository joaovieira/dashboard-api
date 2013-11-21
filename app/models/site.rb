class Site
  include Mongoid::Document
  
  field :title, type: String
  field :url, type: String
  
  belongs_to :widget
  has_many :inputs
end
