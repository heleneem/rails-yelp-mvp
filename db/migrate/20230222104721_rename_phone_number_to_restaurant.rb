class RenamePhoneNumberToRestaurant < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :phonenumber, :phone_number
  end
end
