class ApplicationController < ActionController::Base
  def home
    render layout: 'home'
  end
end
