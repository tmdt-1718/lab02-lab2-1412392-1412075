module LoginHelper
	def current_user
		session[:current_user]
	end
end
