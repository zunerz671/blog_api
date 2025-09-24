class ArticlesController < ApplicationController
  def index
    articles = Article.all

    render json: articles
  end

  def show
    article = Article.find(params[:id])

    render json: article
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

  def update
    article = Article.find(params[:id])

    article.update(
      title: params[:title],
      content: params[:content],
      author_id: params[:author_id]
    )

    render json: article
  end

  def destroy
    article = Article.find(params[:id])

    article.destroy

    render json: { message: "Article deleted..." }
  end
end
