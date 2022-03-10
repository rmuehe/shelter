class Provider < Admin
    # validates :name, presence: true
    # validates :summary, presence: true

    # validates :phone, presence: true
    # validates :serving, presence: true

    has_many :reservations, dependent: :destroy
    has_many :users, through: :reservations
end
