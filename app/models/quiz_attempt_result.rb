class QuizAttemptResult < ApplicationRecord
  belongs_to :user
  belongs_to :quiz_topic
end
