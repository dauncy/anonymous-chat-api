class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :username, :bio, :location
 
end
