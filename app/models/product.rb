# frozen_string_literal: true

class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true

  validates :title, :price, :make, presence: true
  validates :description, length: { maximum: 500, too_long: '%{count} characters are allowed' }
  validates :title, length: { maximum: 110, too_long: '%{count} characters are allowed' }
  validates :price, numericality: { only_integer: true }, length: { maximum: 7 }

  def serial_number
    'SHPN-%.4d' % id
  end
end
