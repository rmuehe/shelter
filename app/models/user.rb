class User < ApplicationRecord
    has_many :reservations, dependent: :destroy
    has_many :providers, through: :reservations
    has_many :requests, dependent: :destroy

    validates :username, presence: true, uniqueness: true
    validates :role, presence: true
end
