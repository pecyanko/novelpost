## アプリケーション名
 novelpost

## アプリケーション概要
自分が好きな小説を投稿したり、他人の投稿を見てコメントを残せたりできます。

## URL
https://novelpost.onrender.com

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

## 実装した機能についての動画
- [新規投稿](https://i.gyazo.com/9a5326e90c925a97b3ed3b73918617a4.gif)
- [詳細表示](https://i.gyazo.com/1264549beec3c0698751f5ff2e0b5841.gif)
- [編集](https://i.gyazo.com/1a5d8e7907d3b3ba0ff059e054f3e1de.gif)
- [削除](https://i.gyazo.com/5cf57b4f7271dafa9ded9b0b0175ec81.gif)

## 実装予定の機能
- マイページ機能
- 検索機能
- お気に入り機能
- 感想ボタン機能

## テーブル設計
[ER図](https://user-images.githubusercontent.com/121007915/220075019-9b067cf5-0e0e-4b01-a89e-efc2f35d1987.png)


### novels テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| author             | string     | null: false                    |
| review             | text       | null: false                    |
| category_id        | integer    | null: false                    | 
| user               | references | null: false, foreign_key: true |

#### Association

- belongs_to :users
- has_many :favorites
- has_many :comment

### users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| password           | string | null: false |
| name               | string | null: false |

#### Association
- has_many :novel
- has_many :favorite




### comments テーブル

 Column      | Type       | Options                         |
| ---------- | ---------- | ------------------------------- |
| content    | text       | null: false                     |
| user       | references | null: false, foreign_key: true  |
| novel      | references | null: false, foreign_key: true  |

#### Association
- belomgs_to :novels
- belongs_to :user



### favorites テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| novel              | references | null: false |
| user               | references | null: false |


#### Association

- belongs_to :users
- belongs_to :novels