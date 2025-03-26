class HomeController < ApplicationController

  def index
    @event =  Event.all.first
  end
end
