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

｜ Column        | type       | options                        |
｜ ------------- | ---------- | ------------------------------ |
｜ image         |            | NULL: false                    |
｜ item          | text       | NULL: false                    |
｜ description   | text       | NULL: false                    |
｜ category      | integer    | NULL: false                    |
｜ condition     | integer    | NULL: false                    |
｜ delivery_fee  | integer    | NULL: false                    |
｜ area          | integer    | NULL: false                    |
｜ delivery_time | integer    | NULL: false                    |
｜ price         | string     | NULL: false                    |
｜ user_id       | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- has_many :buys

## buysテーブル

｜ Column   | type       | options                        |
｜ -------- | ---------- | ------------------------------ |
｜ user_id  | references | null: false, foreign_key: true |
｜ item_id  | references | null: false, foreign_key: true |



### Association

- belongs_to :users
- belongs_to :items
- has_one :addresses

## Adressesテーブル

｜ Column       | type       | options     |
｜ ------------ | ---------- | ----------- |
｜ postal_code  | text       | NULL: false |
｜ address      | references | NULL: false |
｜ phon_number  | references | NULL: false |


### Association

- belongs_to :buys


