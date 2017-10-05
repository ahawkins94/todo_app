class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.text :title
      t.text :item
      t.integer :user_id

      t.timestamps
    end
  end
end
