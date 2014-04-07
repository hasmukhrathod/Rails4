# When a Rails server gets a request from a web browser it first goes to the router. 
# The router decides what the request is trying to do, what resources it is trying to interact with.

Blogger::Application.routes.draw do
	#This line tells Rails that we have a resource named articles.
	root to: 'articles#index'
	resources :articles
end
