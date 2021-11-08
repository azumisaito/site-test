class Party < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :members, through: :participations, source: :user
end
