class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :load_events # Ensures @event is always set
  
  def layout_by_resource
    if devise_controller?
      "devise/sessions"
    else
      "application"
    end
  end

  def load_events
    @event = Event.all
  end
end
