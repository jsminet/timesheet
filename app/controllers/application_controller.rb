class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActionController::InvalidAuthenticityToken do |exception|
  	# Example method that will destroy the user cookies
  	sign_out(current_user) 
  	cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery? 
  end
end

  #protect_from_forgery unless: -> { request.format.json? }
