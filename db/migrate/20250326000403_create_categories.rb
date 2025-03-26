class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.text :content
      t.bigint :event_id, index: true
      t.timestamps
    end

    add_foreign_key :categories, :events, column: :event_id, on_delete: :cascade
  end
end
