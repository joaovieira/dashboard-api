class Widget
  include Mongoid::Document
  embeds_many :inputs
  
  field :type, type: String
end
