class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :location_id, :location, :user, :date, :is_image, :post_comments, :day, :day_id

  def date
   return  object.created_at.strftime("%I:%M %p ~ %m.%d.%Y")
  end

  def user
    ActiveModel::SerializableResource.new(object.user,  each_serializer: UserSerializer)
  end


end
