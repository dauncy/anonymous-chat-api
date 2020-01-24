class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :username, :bio, :location
  has_many :messages
  
 
end
