class AddCoordinatesToClinics < ActiveRecord::Migration[6.0]
  def change
    add_column :clinics, :latitude, :float
    add_column :clinics, :longitude, :float
  end
end
