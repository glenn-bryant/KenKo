class AddFavoriteToClinics < ActiveRecord::Migration[6.0]
  def change
    add_column :clinics, :favorite, :boolean, default: false
  end
end
