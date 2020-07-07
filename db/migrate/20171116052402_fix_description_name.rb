class FixDescriptionName < ActiveRecord::Migration[5.1]
  def change
    rename_column :triplaces, :decription, :description
  end
end
