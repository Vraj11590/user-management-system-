class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 40}
  validates :email, presence: true, length:{maximum: 255}
  validates :phone, presence: false, length:{maximum: 10}
end
