class HomeController < ApplicationController
  def index
    if !current_user
      render 'devise/sessions/new'
    else
      @book = Book.new
      @book_list = Book.where(user_id: current_user).reverse
    end
  end
end
