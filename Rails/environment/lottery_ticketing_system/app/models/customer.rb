class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # acts_as_token_authenticatable
  has_one :image, as: :imageable, dependent: :destroy
  has_many :purchases
  has_many :tickets, through: :purchases
  validates :name, presence: true, length: { maximum: 50 }
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 18 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
