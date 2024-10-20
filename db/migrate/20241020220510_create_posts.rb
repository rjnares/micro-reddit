class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :posts, :title, unique: true
  end
end
