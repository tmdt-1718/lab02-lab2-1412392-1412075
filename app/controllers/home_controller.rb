class HomeController < ApplicationController
	before_action :authenticate, only: [ :index]
	def index
		
		id=session[:current_user_id]
		query="SELECT * FROM users u , messages m
		WHERE m.m_userown ="+id.to_s+"AND m.m_usersend=u.user_id ORDER BY m.created_at DESC"
		@listmessage=ActiveRecord::Base.connection.exec_query(query)


	end

	def updatemessage
		id = params['id']
		query="UPDATE messages SET m_status=false
		WHERE m_id ="+id.to_s
		status=ActiveRecord::Base.connection.exec_query(query)

		respond_to do |format|
	        format.json {render :json => {:status => status} } 
	    end

	end
end
