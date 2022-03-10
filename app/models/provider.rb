class Provider < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    # validates :name, presence: true
    # validates :summary, presence: true

    # validates :phone, presence: true
    # validates :serving, presence: true

    has_many :reservations, dependent: :destroy
    has_many :users, through: :reservations
end
