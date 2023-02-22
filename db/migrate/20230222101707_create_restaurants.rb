class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phonenumber
      t.string :category

      t.timestamps
    end
  end
end
