class CreateQuizAttemptResults < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_attempt_results do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quiz_topic, null: false, foreign_key: true
      t.text :question
      t.text :answer
      t.float :is_right
      t.float :is_wrong

      t.timestamps
    end
  end
end
