require 'uuid_checker'

class CsvsController < ApplicationController

  def new
    @csv = Csv.new
  end

  def create
    @csv = Csv.new(csv_param)

    if check_uuid?(csv_param[:file].tempfile)
      @csv = Csv.create(csv_param)
      @csv.filename = csv_param[:file].original_filename
      @csv.url = @csv.file.url
      @csv.save!
      redirect_to @csv
    else
      flash[:alert] = 'There is an error with a unique identifier in the file'
      redirect_to root_path
    end
  end

  def show
    @csv = Csv.find(params[:id])
    @csv_content = CSV.parse(open(@csv.url))
    @title = @csv.filename
  end

  private
  def csv_param
    new_params = params.require(:csv).permit(:id, :filename, :file, :url)
    new_params.merge(user_id: current_user.id)
  end

  def check_uuid?(path)
    content = CSV.parse(open(path))
    UuidChecker.is_uuid_valid(content)
  end

end
