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
    @event = Event.all.first
  end


  def after_sign_in_path_for(resource)
    if resource.superadmin? || resource.admin? || resource.teacher?
      rails_admin_path # Uses RailsAdmin dashboard path
    else
      root_path # Uses the application's root path
    end
  end

end
