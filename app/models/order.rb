class Order < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  belongs_to :deliverer
  belongs_to :food
end
