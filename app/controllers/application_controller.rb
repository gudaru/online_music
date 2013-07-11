class ApplicationController < ActionController::Base
  before_filter :s_index
  protect_from_forgery
  include SessionsHelper
  
  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end

  def s_index
    @songs = Music.find(:all, order: "name")
    @artists = Artist.find(:all, order: "name")
  end
end
