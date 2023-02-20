# novelpost
 novelpostは小説が好きな人同士で好きな小説を共有できるアプリです

## URL
(https://novelpost.onrender.com)

## テスト用アカウント

-email :test@test.co.jp
-password :testdesu

## アプリケーション概要
自分が好きな小説を投稿し他人の投稿を見たり、コメントを残せたりできます。

## このアプリを作った理由
自分自身小説が好きですが中々読みたいと思える小説に出会えない。
また出会う手段がないため面白いと感じた小説を投稿し合えるサイトを作ることで新たな小説に出会えるようにする

# テーブル設計

## novels テーブル

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

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| password           | string | null: false |
| name               | string | null: false |

## Association
- belongs_to :novel
- belongs_to :favorite




## comments テーブル

 Column      | Type       | Options                         |
| ---------- | ---------- | ------------------------------- |
| content    | text       | null: false                     |
| user       | references | null: false, foreign_key: true  |
| novel      | references | null: false, foreign_key: true  |

## Association
- has_many :novels



## favorites テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| novel              | references | null: false |
| user               | references | null: false |


## Association

- has_many :users
- has_many :novels