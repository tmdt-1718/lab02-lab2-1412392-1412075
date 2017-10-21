class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include LoginHelper
  
  def authenticate
		if session[:current_user]==nil
			redirect_to '/login'
		end
	end
end
