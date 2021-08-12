# frozen_string_literal: true

class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true
  has_many :line_items

  validates :title, :price, :make, presence: true
  validates :description, length: { maximum: 500, too_long: '%{count} characters are allowed' }
  validates :title, length: { maximum: 110, too_long: '%{count} characters are allowed' }
  validates :price, numericality: { only_integer: true }, length: { maximum: 7 }
  acts_as_commontable dependent: :destroy
  def serial_number
    'SHPN-%.4d' % id
  end
feature/cart_handling

  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
# <eature/Stripe_payment_and_Search
# 
#  feature_product_prodImages
#  feature/cart_handling
 end
