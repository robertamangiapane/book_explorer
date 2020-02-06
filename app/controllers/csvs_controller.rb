class CsvsController < ApplicationController

  def new
    @csv = Csv.new
  end

  def create
    @csv = Csv.create(csv_param)
    @csv.filename = csv_param[:file].original_filename
    @csv.url = @csv.file.url

    @csv.save!
    redirect_to @csv
  end

  def show
    @csv = Csv.find(params[:id])
  end

  private
  def csv_param
    new_params = params.require(:csv).permit(:id, :filename, :file, :url)
    new_params.merge(user_id: current_user.id)
  end

end
