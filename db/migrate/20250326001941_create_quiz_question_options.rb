class CreateQuizQuestionOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_question_options do |t|
      t.text :title
      t.boolean :is_right
      t.boolean :is_last_option
      t.references :quiz_question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
