# テーブル設定

## usersテーブル

｜ Column             | type   | options                  |
｜ ------------------ | ------ | ------------------------ |
｜ nickname           | string | null: false              |
｜ email              | string | null: false, unique: true|
｜ encrypted_password | string | null: false              |
｜ first_name         | string | null: false              |
｜ last_name          | string | null: false              |
｜ first_name_kana    | string | null: false              |
｜ last_name_kana     | string | null: false              |
｜ birthday           | date   | null: false              |

### Association

- has_many :items
- has_many :buys

## itemsテーブル

｜ Column           | type       | options                        |
｜ ---------------- | ---------- | ------------------------------ |
｜ product_name     | string     | null: false                    |
｜ description      | text       | null: false                    |
｜ category_id      | integer    | null: false                    |
｜ condition_id     | integer    | null: false                    |
｜ delivery_fee_id  | integer    | null: false                    |
｜ area_id          | integer    | null: false                    |
｜ delivery_time_id | integer    | null: false                    |
｜ price            | integer    | null: false                    |
｜ user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :buy

## buysテーブル

｜ Column | type       | options                        |
｜ ------ | ---------- | ------------------------------ |
｜ user   | references | null: false, foreign_key: true |
｜ item   | references | null: false, foreign_key: true |



### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## Addressesテーブル

｜ Column         | type       | options                        |
｜ -------------- | ---------- | ------------------------------ |
｜ postal_code    | string     | null: false                    |
｜ area_id        | integer    | null: false                    |
｜ municipalities | string     | null: false                    |
｜ building_name  | string     |                                |
｜ house_number   | string     | null: false                    |
｜ phone_number   | string     | null: false                    |
｜ buy            | references | null: false, foreign_key: true |

### Association

- belongs_to :buy


