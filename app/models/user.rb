class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :username, uniqueness: true, presence: true, length: { minimum: 3 }
    validates :email, uniqueness: true, presence: true
    validates :password, uniqueness: true, presence: true, length: { minimum: 7 }
end
