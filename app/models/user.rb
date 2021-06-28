class User < ApplicationRecord
    has_many :books
    has_many :reviews
    has_secure_password
    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :email, uniqueness: { case_sensitive: false }
end
