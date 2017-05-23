Squeaker::Application.routes.draw do
	resources :users do
		resources :messages
	end		
	resources :search, :only => :show, :controller => :search
end

	