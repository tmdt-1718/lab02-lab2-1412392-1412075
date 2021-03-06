Rails.application.routes.draw do
 	get '/', to:  'home#index'
 	get '/login',to: 'login#index'
 	post '/login',to: 'login#create'

 	delete '/logout',to: 'login#destroy'

 	get '/signup', to:  'user#index'
 	post '/signup', to:  'user#create'

 	post '/updatemessage', to: 'home#updatemessage'

 	get '/listfriend',to: 'listfriend#index'
 	post '/listfriend',to: 'listfriend#addfriend'


 	get '/sendmessage',to: 'sendmessage#index'
 	post '/sendmessage',to: 'sendmessage#sendmessage'
end