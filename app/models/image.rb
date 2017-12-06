require 'carrierwave/orm/activerecord'
class Image < ApplicationRecord
  mount_uploader :img, ImageUploader
end
