class CsvsController < ApplicationController

  def new
    @csv = Csv.new
  end

  def create
    @csv = Csv.create(csv_param)
    @csv.filename = csv_param[:file].original_filename
    @csv.url = @csv.file.url

    # if check_uuid?(@csv)
      @csv.save!
      redirect_to @csv
    # else
    #   flash[:alert] = 'There is an error with a unique identifier in the file'
    # end
  end

  def show
    @csv = Csv.find(params[:id])

    @csv_content = CSV.parse(open(@csv.url))
  end

  private
  def csv_param
    new_params = params.require(:csv).permit(:id, :filename, :file, :url)
    new_params.merge(user_id: current_user.id)
  end

  # def check_uuid?(csv)
  #   content = CSV.parse(open(csv.url))
  #   # csv.is_uuid_valid(content)
  # end

end
