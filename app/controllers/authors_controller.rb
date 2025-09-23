class AuthorsController < ApplicationController
  def index
    authors = Author.all

    render json: authors
  end 

  def create
    author = Author.new(
      name: params[:name],
      age: params[:age]
      
    )

    if author.save
      render json: author
    else
      render json: author.errors, status: :unprocessable_entity
    end
  end 
  
end
