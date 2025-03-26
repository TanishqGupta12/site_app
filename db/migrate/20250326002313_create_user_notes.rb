class CreateUserNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :user_notes do |t|
      t.string :subject
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
