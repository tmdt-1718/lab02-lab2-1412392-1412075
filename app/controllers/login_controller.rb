class LoginController < ApplicationController

	def index
		

	end
	def create
		user=User.find_by(session_params)
		if user.nil? #nếu là null hoac false
			flash[:error]="Wrong email or password. Plese try again"
			render :index
		else
			session[:current_user]=user
			session[:current_user_id]=user.user_id
			flash[:success]="Login successfully"
			redirect_to '/'
		end
	end
	def session_params
		params.require(:login).permit(:user_email,:user_password)

	end
	


	def destroy
		session.delete(:current_user)
		redirect_to '/login'
	end
end
