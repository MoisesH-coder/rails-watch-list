class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.bigint :list_id, null: false
      t.timestamps
    end

    add_index :reviews, :list_id  # Agrega el índice para list_id
  end
end
