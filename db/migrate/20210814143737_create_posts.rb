class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
