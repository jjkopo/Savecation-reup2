class CreateTriplaces < ActiveRecord::Migration[5.1]
  def change
    create_table :triplaces do |t|
      t.string :title
      t.decimal :Price
      t.string :photoURL
      t.string :decription
      t.integer :city_id
      t.timestamps
    end
  end
end
