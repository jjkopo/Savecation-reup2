class AddCountryNameInCity < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :country, :text
  end
end
