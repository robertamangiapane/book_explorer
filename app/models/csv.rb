class Csv < ApplicationRecord
  mount_uploader :file, CsvUploader
  belongs_to :user

end
