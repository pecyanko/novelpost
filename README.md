#novelpostのER図

##novels テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| author             | string     | null: false                    |
| review             | text       | null: false                    |
| category_id        | integer    | null: false                    | 
| user               | references | null: false, foreign_key: true |

## Association

- has_many :users
- belongs_to :favorites
- belongs_to :comment

##users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| password           | string | null: false |
| name               | string | null: false |

## Association
- belongs_to :novel
- belongs_to :favorite




##comments テーブル

 Column      | Type       | Options                         |
| ---------- | ---------- | ------------------------------- |
| content    | text       | null: false                     |
| prototype  | references | null: false, foreign_key: true  |
| user       | references | null: false, foreign_key: true  |
| novel      | references | null: false, foreign_key: true  |

## Association
- has_many :novels



##favorites テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| novel              | references | null: false |
| user               | references | null: false |


## Association

- has_many :users
- has_many :novels