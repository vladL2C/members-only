class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :comments, presence: true
end
