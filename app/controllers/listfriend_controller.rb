class ListfriendController < ApplicationController
	before_action :authenticate, only: [ :index]
	def index
		@id=session[:current_user_id]
		query1="SELECT * FROM users WHERE user_id<>"+@id.to_s #lay danh sach tat ca nguoi dung
		query2="SELECT li.id_friend FROM friendtables li,users u WHERE li.id_user="+@id.to_s+"AND li.id_friend=u.user_id" #lay danh sach ban be cua nguoi dung hien tai

		
		@listuser=(ActiveRecord::Base.connection.exec_query(query1)).to_a
		@listfriend=(ActiveRecord::Base.connection.exec_query(query2)).to_a

	end

	def addfriend
		currentid = params['currentid']

		id_user_friend = params['id']
		Friendtable.create!(id_user:currentid,id_friend:id_user_friend)

		respond_to do |format|
	        format.json {render :json => {:status => true} } 
	    end
	end
end
