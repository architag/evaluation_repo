class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :image, as: :imageable
  has_many :purchases
  has_many :tickets, through: :purchases
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :image, presence: true
end
