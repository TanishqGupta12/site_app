class QuizAttempt < ApplicationRecord
  belongs_to :user
  belongs_to :quiz_attempt_result
end
