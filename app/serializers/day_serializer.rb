class DaySerializer < ActiveModel::Serializer
  attributes :id, :word1, :word2, :word3, :word4, :word5, :date, :posts, :created_at

  def date
   return  object.created_at.strftime("%Y-%m-%d")
  end


  # def posts
  #   object.user.posts.map do |post|
  #     post
  #   end
  # end

end
