class AddWebsiteToClinics < ActiveRecord::Migration[6.0]
  def change
    add_column :clinics, :website, :string
  end
end
