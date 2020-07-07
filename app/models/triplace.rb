class Triplace < ApplicationRecord
  belongs_to :city

  def self.import(file)
    CSV.foreach(file.path, :headers => true) do |row|
      Triplace.create! row.to_h
    end
  end
end
