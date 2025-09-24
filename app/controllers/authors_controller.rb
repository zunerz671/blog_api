class AuthorsController < ApplicationController
  before_action :set_author, only: [ :show, :update, :destroy ]
  after_action :confirmation_message, only: [ :create, :update, :destroy ]

  def index
    @author = Author.all

    render json: @author
  end

  def show
    render json: @author
  end
  def create
    @author = Author.new(
      name: params[:name],
      age: params[:age]
    )

    if @author.save
      render json: @author
    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end

  def update
    @author.update(
      name: params[:name] || @author.name,
      age: params[:age] || @author.age
    )

    render json: @author
  end

  def destroy
    @author.destroy

    render json: { message: "Author deleted..." }
  end
end

private

def set_author
  @author = Author.find(params[:id])
end

def confirmation_message
  puts " --- --- --- "
  puts "Action completed..."
  puts " --- --- --- "
end
