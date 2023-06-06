class Deliverer < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :users,through: :orders

    validates :user_name, presence: true
end
