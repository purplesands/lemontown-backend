class EntryCommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :entry_id, :user, :entry
end
