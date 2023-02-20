## アプリケーション名
 novelpost

## アプリケーション概要
自分が好きな小説を投稿したり、他人の投稿を見たてコメントを残せたりできます。

## URL
(https://novelpost.onrender.com)

## テスト用アカウント
- Basic認証ID :admin
- Basic認証password :2222
- email :test@test.co.jp
- password :testdesu

## 利用方法
### 小説投稿
1.トップページのヘッダーからユーzー新規登録を行う
2.トップページから投稿ボタンを押して、小説の内容を入力して投稿する

### 他人の投稿を見る
1.トップページから投稿一覧のみたい投稿をクリックして詳細ページへ遷移する
2.気になった者にはコメントでメッセージを送る

## このアプリを作った理由
自分自身小説が好きですが中々読みたいと思える小説に出会えない。
また出会う手段がないため面白いと感じた小説を投稿し合えるサイトを作ることで新たな小説に出会えるようにする

## 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/1gCQHULmPW73UYo-uzlz0SeAEji5hoPW8Grqm6hu_Rdw/edit#gid=982722306)

## 実装した機能についての画像
- [トップページ](https://i.gyazo.com/ef64b284ac14aba941a479bab0bce824.gif)

## 実装予定の機能
- 検索機能
- お気に入り機能
- 感想ボタン機能


## テーブル設計

### novels テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| author             | string     | null: false                    |
| review             | text       | null: false                    |
| category_id        | integer    | null: false                    | 
| user               | references | null: false, foreign_key: true |

#### Association

- has_many :users
- belongs_to :favorites
- belongs_to :comment

### users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| password           | string | null: false |
| name               | string | null: false |

#### Association
- belongs_to :novel
- belongs_to :favorite




### comments テーブル

 Column      | Type       | Options                         |
| ---------- | ---------- | ------------------------------- |
| content    | text       | null: false                     |
| user       | references | null: false, foreign_key: true  |
| novel      | references | null: false, foreign_key: true  |

#### Association
- has_many :novels



### favorites テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| novel              | references | null: false |
| user               | references | null: false |


#### Association

- has_many :users
- has_many :novels