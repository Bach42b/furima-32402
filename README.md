# テーブル設定

## usersテーブル

｜ Column             | type   | options                  |
｜ ------------------ | ------ | ------------------------ |
｜ nickname           | string | NULL: false              |
｜ email              | string | NULL: false, unique: true|
｜ encrypted_password | string | NULL: false              |
｜ first_name         | string | NULL: false              |
｜ last_name          | string | NULL: false              |
｜ first_name_kana    | string | NULL: false              |
｜ last_name_kana     | string | NULL: false              |
｜ birthday           | date   | NULL: false              |

### Association

- has_many :items
- has_many :buys

## itemsテーブル

｜ Column           | type       | options                        |
｜ ---------------- | ---------- | ------------------------------ |
｜ product_name     | string     | NULL: false                    |
｜ description      | text       | NULL: false                    |
｜ category_id      | integer    | NULL: false                    |
｜ condition_id     | integer    | NULL: false                    |
｜ delivery_fee_id  | integer    | NULL: false                    |
｜ area_id          | integer    | NULL: false                    |
｜ delivery_time_id | integer    | NULL: false                    |
｜ price            | string     | NULL: false                    |
｜ user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :buys

## buysテーブル

｜ Column | type       | options                        |
｜ ------ | ---------- | ------------------------------ |
｜ user   | references | null: false, foreign_key: true |
｜ item   | references | null: false, foreign_key: true |



### Association

- belongs_to :user
- belongs_to :item
- has_one :addresses

## Adressesテーブル

｜ Column         | type       | options     |
｜ -------------- | ---------- | ----------- |
｜ postal_code    | text       | NULL: false |
｜ prefectures    | references | NULL: false |
｜ municipalities | string     | NULL: false |
｜ building_name  | string     | NULL: false |
｜ house_number   | string     | NULL: false |
｜ phon_number    | string     | NULL: false |


### Association

- belongs_to :buy


