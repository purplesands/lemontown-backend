class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :location_id
end
