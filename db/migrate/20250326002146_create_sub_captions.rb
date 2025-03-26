class CreateSubCaptions < ActiveRecord::Migration[7.1]
  def change
    create_table :sub_captions do |t|
      t.string :title
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
