class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def authenticate
		if session[:current_user]==nil
			redirect_to '/login'
		end
	end
end
