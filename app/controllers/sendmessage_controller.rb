class SendmessageController < ApplicationController

	before_action :authenticate, only: [ :index]

	def index

		@id=session[:current_user_id]
		query2="SELECT * FROM friendtables li,users u WHERE li.id_user="+@id.to_s+"AND li.id_friend=u.user_id" #lay danh sach ban be cua nguoi dung hien tai

		@listfriend=(ActiveRecord::Base.connection.exec_query(query2)).to_a


	end

	def sendmessage
		usercurrent = params['usercurrent']
		usersend = params['usersend']
		content = params['content']

		@numbermessage=Message.count+1

		Message.create!(m_id:@numbermessage,m_userown:usersend,m_usersend:usercurrent,m_content:content.to_s,
				m_status:true)

		respond_to do |format|
	        format.json {render :json => {:status => true} } 
	    end
	end
end
