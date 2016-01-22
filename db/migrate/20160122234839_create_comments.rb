class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.datetime :comment_created_at
      t.timestamps null: false
    end
  end
end
