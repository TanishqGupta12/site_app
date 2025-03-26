class Course < ApplicationRecord

  scope :courses_for_event, ->(event_id) { includes(:categories).where(event_id: event_id) }
end
