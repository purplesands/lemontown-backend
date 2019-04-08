class Post < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :post_comments
  accepts_nested_attributes_for :user
end
