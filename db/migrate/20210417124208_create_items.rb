class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :product_name,        null: false
      t.text       :description,         null: false
      t.integer    :price ,              null: false
      t.references :user,                null: false, foreign_key: true
      t.integer    :area_id,             null: false
      t.integer    :category_id,         null: false
      t.integer    :condition_id,        null: false
      t.integer    :delivery_fee_id,     null: false
      t.integer    :delivery_time_id,    null: false
      t.timestamps
    end
  end
end