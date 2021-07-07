class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_one_attached :image_file
  validates :image_file, size: { less_than: 5.megabytes, message: "should be less than 5MB" }

  def customer_image 
    image_file.variant(resize_to_limit: [200, 200])
  end
end
