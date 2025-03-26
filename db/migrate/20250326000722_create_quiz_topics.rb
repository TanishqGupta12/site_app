class CreateQuizTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_topics do |t|
      t.string :title, limit: 255
      t.string :description, limit: 255
      t.integer :sequence
      t.boolean :practise_quiz, default: false
      t.bigint :course_id, index: true
      t.bigint :catgory_id, index: true
      t.timestamps
    end

    add_foreign_key :quiz_topics, :courses, column: :course_id
    add_foreign_key :quiz_topics, :categories, column: :catgory_id
  end
end
