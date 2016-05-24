class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id
      t.string :image

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
    add_attachment :microposts, :image
  end
end
