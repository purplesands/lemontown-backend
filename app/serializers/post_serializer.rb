class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :location_id, :location, :user, :date

  def date
   return  object.created_at.strftime("%I:%M %p ~ %m.%d.%Y")
  end

end
