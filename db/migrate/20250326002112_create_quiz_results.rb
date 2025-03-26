class CreateQuizResults < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_results do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :is_pass
      t.references :quiz_attempt, null: false, foreign_key: true
      t.float :points
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
