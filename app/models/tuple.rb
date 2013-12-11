class Tuple
  include Mongoid::Document
  field :key, type: String
  field :value, type: String

  embedded_in :input
end
