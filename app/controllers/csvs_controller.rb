class CsvsController < ApplicationController
  def new
    @csv = Csv.new
  end

  def create
    @csv = Csv.create(csv_param)
    redirect_to @csv
  end

  def show
    @csv = Csv.find(params[:id])
  end

  private
  def csv_param
    new_params = params.require(:csv).permit(:title)
    new_params.merge(user_id: current_user.id)
  end

end
