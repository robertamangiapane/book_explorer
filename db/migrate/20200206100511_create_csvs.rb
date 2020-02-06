class CreateCsvs < ActiveRecord::Migration[6.0]
  def change
    create_table :csvs do |t|
      t.string :filename
      t.string :file
      t.string :url
    end
  end
end
