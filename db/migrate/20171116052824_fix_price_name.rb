class FixPriceName < ActiveRecord::Migration[5.1]
  def change
    rename_column :triplaces, :Price, :price
  end
end
