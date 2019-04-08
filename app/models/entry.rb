class Entry < ApplicationRecord
  belongs_to :user
  has_many :entry_comments
  accepts_nested_attributes_for :user
end
