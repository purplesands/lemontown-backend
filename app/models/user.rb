class User < ApplicationRecord
  has_many :posts
  has_many :post_comments, through: :posts
  has_many :entries
  has_many :entry_comments, through: :entries
  has_many :followings
  has_many :followed_users, through: :followings
  has_many :followers, foreign_key: :followed_user_id, class_name: 'Following'
  has_many :follower_users, through: :followers, source: :user

end
