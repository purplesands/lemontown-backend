class EntrySerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :user, :date, :created_at

  def date
   return  object.created_at.strftime("%I:%M %p ~ %m.%d.%Y")
  end

  def user
    ActiveModel::SerializableResource.new(object.user,  each_serializer: UserSerializer)
  end


end
