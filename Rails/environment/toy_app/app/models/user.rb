class User < ApplicationRecord
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[A-Za-z0-9.]*@[A-Za-z0-9.]*.com\z/ } 
end
