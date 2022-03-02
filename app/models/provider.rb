class Provider < ApplicationRecord
    validates :name, presence: true
    # validates :phone, presence: true
    validates :summary, presence: true
    # validates :serving, presence: true

    has_many :reservations, dependent: :destroy
    has_many :users, through: :reservations
end
