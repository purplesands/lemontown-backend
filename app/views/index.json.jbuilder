json.array! @users do |user|
  json.extract! user, :id, :username, :posts, :followed_users, :follower_users, :entries, :followings, :avatar
  json.photoUrl url_for(user.avatar)
end
