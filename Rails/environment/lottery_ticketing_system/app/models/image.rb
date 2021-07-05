class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_one_attached :image_file
end
