class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.belongs_to :author, index: true, foreign_key: true
      t.text :description, null: false
      t.integer :year, null: false
      t.belongs_to :genre, index: true, foreign_key: true
      t.timestamps
    end
  end
end
