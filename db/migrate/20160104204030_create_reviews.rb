class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :book, index: true, foreign_key: true
      t.string :title, null: false
      t.text :body, null: false
      t.integer :rating, null: false
      t.timestamps
    end
  end
end
