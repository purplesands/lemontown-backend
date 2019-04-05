class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :posts
end
