class Item < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one :buy
  has_one_attached :image

  with_options presence: true do
 
    validates :price
    validates :image
    validates :product_name
    validates :description

  end

  validates :category_id,             inclusion: { in: [2,3,4,5,6,7,8,9,10,11] }
  validates :condition_id,            inclusion: { in: [2,3,4,5,6,7] }
  validates :delivery_fee_id,         inclusion: { in: [2,3] }
  validates :area_id,                 numericality: { greater_than_or_equal_to:2,less_than_or_equal_to:48 }
  validates :delivery_time_id,        inclusion: { in: [2,3,4] }
  


  
  validates :price,format: { with: /\A[0-9]+\z/ }
    
  validates :price, inclusion: { in: 300..9999999 }
  
  validates :price, numericality: true
    
  
end