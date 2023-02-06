class CreateNovels < ActiveRecord::Migration[6.0]
  def change
    create_table :novels do |t|
      t.string :title,   null: false
      t.string :author,  null: false
      t.text :review,    nill: false
      t.integer :category_id,  null: false

      t.timestamps
    end
  end
end
