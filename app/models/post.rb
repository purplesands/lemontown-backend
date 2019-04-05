class Post < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :post_comments
end
