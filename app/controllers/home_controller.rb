class HomeController < ApplicationController
  def index
    if !current_user
      render 'devise/sessions/new'
    else
      @csv = Csv.new
      @csv_list = Csv.where(user_id: current_user).reverse
    end
  end
end
