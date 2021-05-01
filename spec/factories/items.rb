FactoryBot.define do
  factory :item do
    product_name              { 'wwwwww' }
    description               { 'aaaaaaa' }
    category_id               { 2 }
    condition_id              { 2 }
    delivery_fee_id           { 2 }
    area_id                   { 2 }
    delivery_time_id          { 2 }
    price                     { 999 }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
