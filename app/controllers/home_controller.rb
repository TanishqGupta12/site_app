class HomeController < ApplicationController

  def index
    @event =  Event.all.first
    @categories_data = Category.includes(:captions).where(event_id: @event.try(:id))
  end
end
