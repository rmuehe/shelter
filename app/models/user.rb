class User < ApplicationRecord
    has_many :reservations, dependent: :destroy
    has_many :providers, through: :reservations
end
