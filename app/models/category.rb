class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: '推理小説' }, { id: 3, name: '青春小説' },
    { id: 4, name: '恋愛小説' }, { id: 5, name: 'SF小説' },
    { id: 6, name: 'ファンタジー小説' }, { id: 7, name: 'ホラー小説' }, { id: 8, name: '経済小説' },
    { id: 9, name: '歴史小説' }, { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :novels
end
