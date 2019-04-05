class EntrySerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :user, :date, :created_at

  def date
   return  object.created_at.strftime("%I:%M %p ~ %m.%d.%Y")
  end

end
