class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_param)
  end

  private
  def book_param
    new_params = params.require(:book).permit(:title)
    new_params.merge(user_id: current_user.id)
  end
end
