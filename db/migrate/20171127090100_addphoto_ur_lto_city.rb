class AddphotoUrLtoCity < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :photoURL, :string
  end
end
