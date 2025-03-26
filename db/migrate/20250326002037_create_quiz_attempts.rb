class CreateQuizAttempts < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_attempts do |t|
      t.references :user, null: false, foreign_key: true
      t.float :marks_gained
      t.references :quiz_attempt_result, null: false, foreign_key: true

      t.timestamps
    end
  end
end
