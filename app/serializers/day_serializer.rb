class DaySerializer < ActiveModel::Serializer
  attributes :id, :word1, :word2, :word3, :date, :posts

  # def posts
  #   object.user.posts.map do |post|
  #     post
  #   end
  # end

end
