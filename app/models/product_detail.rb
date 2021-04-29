class ProductDetail < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :area_id
    belongs_to :category_id
    belongs_to :condition_id
    belongs_to :delivery_fee_id
    belongs_to :delivery_time_id
  end

  
end
