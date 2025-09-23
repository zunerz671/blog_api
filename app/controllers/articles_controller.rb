class ArticlesController < ApplicationController
  def index
    articles = Article.all

    render json: articles
  end 

   def create
    article = Article.new(
      title: params[:title],
      content: params[:content],
      author_id: params[:author_id]
      
    )

    if article.save
      render json: article
    else
      render json: article.errors, status: :unprocessable_entity
    end
  end

end
