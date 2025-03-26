class QuizResult < ApplicationRecord
  belongs_to :user
  belongs_to :quiz_attempt
  belongs_to :course
end
