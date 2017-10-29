Rails.application.routes.draw do
  
	
	resources :messages


	root :to => redirect('/messages')	
end
