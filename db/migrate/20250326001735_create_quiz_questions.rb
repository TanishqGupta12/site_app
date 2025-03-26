class CreateQuizQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_questions do |t|
      t.integer :sequence
      t.text :title
      t.string :question_type, limit: 255
      t.bigint :quiz_topic_id, index: true
      t.text :wrong_answer_explanation
      t.boolean :is_required, default: false
      t.text :correct_answer_explanation
      t.float :marks
      t.float :negative_marks
      t.timestamps
    end

    add_foreign_key :quiz_questions, :quiz_topics, column: :quiz_topic_id, on_delete: :cascade
  end
end
