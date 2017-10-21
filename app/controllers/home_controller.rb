class HomeController < ApplicationController
	before_action :authenticate
	def index
		
		id=session[:current_user_id]
		query="SELECT * FROM users u , messages m
		WHERE m.m_userown ="+id.to_s+"AND m.m_usersend=u.user_id ORDER BY m.created_at DESC"
		@listmessage=ActiveRecord::Base.connection.exec_query(query)


	end
end
