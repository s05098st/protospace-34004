# テーブル設計

## usersテーブル

| Column    | Type   | Options       |
| --------- | ------ | ------------- |
| email     | string | null: false   |
| password  | string | null: false   |
| name      | string | null: false   |
| profile   | text   | null: false   |
| occupation| text   | null: false   |
| position  | text   | null: false   |

### Association

* has_many :prototypes
* has_many :comments

## prototypeテーブル

| Column        | Type        | Options           |
| ------------- | ----------- | ----------------- |
| title         | string      | null: false       |
| concept       | text        | null: false       |
| catch_copy    | text        | null: false       |
| user          | references  | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## commentsテーブル

| Column    | Type        | Options           |
| --------- | ----------- | ----------------- |
| text      | text        | null: false       |
| user      | references  | foreign_key: true |
| prototype | references  | foreign_key: true |

### Association

- belongs_to :prototype
- belongs_to :user