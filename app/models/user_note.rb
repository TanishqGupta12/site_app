class UserNote < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :course
end
