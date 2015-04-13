class Entry < ActiveRecord::Base
  belongs_to :issue

  mount_uploader :picture, PictureUploader

  validate :picture_size

  private
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
