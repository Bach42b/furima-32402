class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one :buy
  has_one_attached :image
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :area
  belongs_to_active_hash :delivery_time

  with_options presence: true do
    validates :price
    validates :image
    validates :product_name
    validates :description
  end

  with_options  numericality: { other_than: 1 } do
    validates :category_id
    validates :condition_id
    validates :delivery_fee_id
    validates :area_id
    validates :delivery_time_id
  end


  validates :price, format: { with: /\A[0-9]+\z/ }

  validates :price, inclusion: { in: 300..9_999_999 }

  validates :price, numericality: true

end
