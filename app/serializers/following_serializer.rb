class FollowingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :friend_id, :username
end
