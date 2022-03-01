class Provider < ApplicationRecord
    validates :name, presence: true
    # validates :phone, presence: true
    validates :summary, presence: true
    # validates :serving, presence: true
    has_many :reservations
    has_many :users, through: :reservations
end
