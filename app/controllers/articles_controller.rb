class ArticlesController < ApplicationController

  include ArticlesHelper

	def index
		# We want the list of articles to be accessible from both the controller and the view that we’re about to create.
		# If we had just named it articles, that local variable would only be available within the index method of the controller. 
  		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end
	
	def create
	  	 @article = Article.new(article_params)
  		 @article.save
  		 redirect_to article_path(@article)
	end
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end
	def edit
  		@article = Article.find(params[:id])
	end

	def update
  		@article = Article.find(params[:id])
  		@article.update(article_params)	
		  flash.notice = "Article '#{@article.title}' Updated!"
		redirect_to article_path(@article)
	end
	
end
