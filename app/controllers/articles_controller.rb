class ArticlesController < ApplicationController

	def index
		#We want the list of articles to be accessible from both the controller and the view that we’re about to create.
		# If we had just named it articles, that local variable would only be available within the index method of the controller. 
  		@articles = Article.all
	end
	def show
		@article = Article.find(params[:id])
	end

		
end
