class Entry < ApplicationRecord
  belongs_to :user
  has_many :entry_comments
end
