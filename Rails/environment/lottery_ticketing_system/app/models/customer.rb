class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :customer_image
  has_many :tickets
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
