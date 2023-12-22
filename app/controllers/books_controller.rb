class BooksController < ApplicationController
  before_action :set_book, only: [:show]

  def index
    @books = Book.all
    render json: @books, each_serializer: BookSerializer
  end

  def show
    render json: @book
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end
end
