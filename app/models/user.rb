class User < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :restaurants, through: :orders


    validates :user_name, presence: true
end
