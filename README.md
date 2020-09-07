# テーブル設計

## users テーブル

| Column            | Type   | Options                        |
| ------------------| ------ | ------------------------------ |
| nickname          | string | null: false                    |
| password          | string | null: false                    |

### Association

- has_many :koes
- has_many :gifts


## koes テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| text         | text       | null: false                    |
| name         | string     | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :gifts

## gifts テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| koe      | references | null: false, foreign_key: true |
| text     | text       |                                |

### Association

- belongs_to :user
- belongs_to :koe