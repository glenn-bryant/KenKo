class CreateClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :telephone
      t.string :hours
      t.string :address
      t.string :eng_op
      t.string :category

      t.timestamps
    end
  end
end
