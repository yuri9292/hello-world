class Picture < ApplicationRecord
validates_presence_of :image
validate :image_size_validation

mount_uploader :image, ImageUploader
 
private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end

end
