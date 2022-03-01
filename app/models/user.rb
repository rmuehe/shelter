class User < ApplicationRecord
    has_many :reservations
    has_many :providers, through: :reservations
end
