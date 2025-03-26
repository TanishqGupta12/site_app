class UserTicket < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :ticket
  belongs_to :course
end
