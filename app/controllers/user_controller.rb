class UserController < ApplicationController
	def index
		@numberuser=User.count+1
	end
	def create


		user=User.find_by(user_email: params[:user][:user_email])

		if user #da ton tai
			flash[:error]="Email has been exit. Please choose another email!"
			render :index
			
		else
			user2=User.create(user_params)
			if user2.nil?
				flash[:error]="Input not valid. Can't register"
				render :index
			else
				flash[:success]="Register successfully"
				redirect_to '/login'
			end
			
		end
	end

	private
	def user_params
		params.require(:user).permit(:user_id,:user_name, :user_email, :user_password)

	end
end
