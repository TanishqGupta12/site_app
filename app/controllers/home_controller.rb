class HomeController < ApplicationController

  def index
    @event =  Event.all.first
    @categories_data = Category.includes(:sub_captions).where(event_id: @event.try(:id))
    @teacher_data =  User.teachers_for_event(@event.id)
    @course_data =  Course.courses_for_event(@event.id)
  end
end
