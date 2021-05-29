class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :body, presence: true, length: { minimum: 5}
  validates :user_id, presence: true 
end
