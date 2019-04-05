class PostCommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :post_id, :user, :post
end
