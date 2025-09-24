class ArticlesController < ApplicationController
  before_action :set_article, only: [ :show, :update, :destroy ]
  after_action :confirmation_message, only: [ :create, :update, :destroy ]

  def index
    articles = Article.all

    render json: articles
  end

  def show
    render json: @article
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
    @article.update(
      title: params[:title],
      content: params[:content],
      author_id: params[:author_id]
    )

    render json: @article
  end

  def destroy
    @article.destroy

    render json: { message: "Article deleted..." }
  end
end

private

def set_article
  @article = Article.find(params[:id])
end

def confirmation_message
  puts " --- --- --- "
  puts "Article action completed..."
  puts " --- --- --- "
end
