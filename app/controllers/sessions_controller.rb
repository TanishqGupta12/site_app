class SessionsController < Devise::SessionsController
  # GET /resource/sign_in
  def new
    redirect_to login_url(event_id: params[:event_id]) and return
  end

end