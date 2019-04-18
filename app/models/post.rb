class Post < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :day
  has_many :post_comments

end
