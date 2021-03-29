# テーブル設定

## usersテーブル

｜ Column   | type   | options     |
｜ -------- | ------ | ----------- |
｜ nickname | string | NULL: false |
｜ email    | string | NULL: false |
｜ password | string | NULL: false |
｜ name     | string | NULL: false |
｜ kana     | string | NULL: false |
｜ birthday | string | NULL: false |

### Association

- has_many :items
- has_many :buys

## itemsテーブル

｜ Column      | type       | options     |
｜ ----------- | ---------- | ----------- |
｜ image       |            | NULL: false |
｜ item        | text       | NULL: false |
｜ description | text       | NULL: false |
｜ price       | string     | NULL: false |


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


