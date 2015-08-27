class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.text :title
      t.text :snippet
      t.references :kind, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
