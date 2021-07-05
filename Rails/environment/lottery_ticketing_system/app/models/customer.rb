class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_token_authenticatable
  has_one :image, as: :imageable
  has_many :purchases
  has_many :tickets, through: :purchases
  validates :name, presence: true, length: { maximum: 50 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
