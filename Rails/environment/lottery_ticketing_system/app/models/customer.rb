class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :image, as: :imageable
  has_many :tickets
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
